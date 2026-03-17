Return-Path: <devicetree+bounces-276531-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KNmMG4QuWkaoQEAu9opvQ
	(envelope-from <devicetree+bounces-276531-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:27:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F26F2A5A31
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:27:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2464B30C1929
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BAE639B49D;
	Tue, 17 Mar 2026 08:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WYMSh4gY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L/i53zfd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5669A39D6CE
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 08:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773735647; cv=none; b=q6MgAmS8HYmOPPfO90UtGAyvgLasrajQ7h2uNlwEP0N9ZPJeZldHRQaoYWxQxPh+2MYlNnJeiovke/vnwCjbIU1vP62aJSVSupvh8HA7f840g/0zg2RGVtiQFsVY4N89H+ZIKPM9Jhs7Z+Qxww1aDVvv2Ih/FG5l2yuTqCDPBqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773735647; c=relaxed/simple;
	bh=pvmFIdrJY329RE6bMLG/vNraS0gxmOyJoGyrnKHCVUY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uK+yUfNjI7RHVW3DEzYkrYlSnYSnT0zyhXOznxGOjZXs3gxk/lXzuFRstR+Mo+dKsOO+6kcPg4jFWe7RZffaSMVlnvilNWByiOxePmffePpMQUUqPaURC5J54FAG1mLqnClkjn0ezfxHPT4wvvafBjub837tgI4fG92bMgcjEFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WYMSh4gY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L/i53zfd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H7EAYB2375310
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 08:20:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=q22MAYUqk7atynCYU/o1hplS
	y4gS1yYkMhcE6k+4m24=; b=WYMSh4gY4nzyJNDkWIGNwmCpNCzKOhmbup1WihmJ
	OxtLfiO20vvyw5ylrgIPN7hwSM851kBvdOida0PFAgIYziQbncZznCr2762dNlhU
	j/dYsEUBxnhcOKvfxifoHL9FLQ2zH77rwqyRObntJb+eeV8pZJ6ci9ySTQE4bmJ7
	RBWplc1lIIMT5qYVQtmwM8iVdOoHsydeFVEecWiOm36n/JWlZckgvQGKQRXki90Y
	LJsiq9Fylq+/xxTMYJFKyrUXZKEDjzeLLLiFA2gMGgpGsqgIDet7ShDnjo3d4FUe
	2KAckR9Noig2yrP61AhMk4c9uarQbrLaKkaJLSioKiN7hw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxkby3a8r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 08:20:45 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd827a356aso307954385a.3
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 01:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773735644; x=1774340444; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q22MAYUqk7atynCYU/o1hplSy4gS1yYkMhcE6k+4m24=;
        b=L/i53zfdShCB5NYUvFcLfKYtulaStJO1YGYeOYpZx7xf9rQe1t6obgJGUWCcN4z0cP
         //lD+TJLpYSGeBBzHxewz/023zqd8J4/ezWgJ1RCqP4j8QeZ4LNbWKf++PKiz5IgnLGq
         feDH1ysZOtBLyuSZ7Z+jLMLc2/34N9tBeAUzbU+CTq3K+s+Dt6jMrQjDu4+cw/HCtrFM
         NzGQM8ILNIQqgfrBU5i+QegOXOHzfO8N4XulfQhdgw46VFlL0CRfspKKUVS2fHgBInba
         rFe3nPulz4vgWqu1ObuZLg+JHbzGLtA1pIlJYymDxwblOeEAYuCXU7fbElXkAnaUi7pe
         TcnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773735644; x=1774340444;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q22MAYUqk7atynCYU/o1hplSy4gS1yYkMhcE6k+4m24=;
        b=rkuYKShWPbOYoKt214N6IgFBdZgh34UiW8z11Qf8b/0xX9cHFn1ZsdwRllEG07MIc6
         PD0MzCkIZf0vrUbIqy78Zo+L/aPnolbWTudpU1rl1LiYp/X0yTQk0rXM2AFQwjVZ+2Tq
         efpS/d/Da38aiUXCtcknDFLiW+UfrTWl538JZ8EscKYjk1xQTI0XlgOYEBDrojnWPKN7
         sD+jFf60pFY7YABwYlqubzu3bfUS6qwaV7le0A/MuPzzmllq3/Jo1XXqKkuv3Zcsplo1
         Br1PWNUjO6Q9/tGY0syH1xu8dlfnyl780k+SHJW0RTHOu+mWg7e7WaFr4oFdKVlbqeJ9
         V4Fg==
X-Forwarded-Encrypted: i=1; AJvYcCXH62CQ7CvuzM0yZsUeb6/0WCoEabSoDxu1tHzstLbS+nYtgOmBtB/ttxtdofuL3Lx9+kj0+0qHeGDm@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+3nlrkjCvbebmIScexCmsZ4I2lsr4WApiM+8EKVYzOpDy6lqD
	tOFEo8UYzXJW/EhkiWkCQnSH8fTN3a0rsQZQqCZqHIFJRmgfVgbkp7LXjc3xqzJQqNZFZQYIcXR
	7edmsLFb5pVytBH02RHK5riImG5mRK4nmEKdz8hYAx1AoCVpOnl1AuRVD1FDOlk2M
X-Gm-Gg: ATEYQzzqg1uO0SDprmdYv+LTDO9Pj3IJcTt4sYy/wsdwCFBc6qDSSmZ4B4wLq2fEBq+
	jxgIVfkjvAFSG0sOhFNdhDGPbjYqR0OP5z6xYqXj57VS7ObWbyu3giEYoeNp/ukw4IFP6F3QtnA
	5poi1kSRBSq05rR1xi22uCkOthKJQ/v/3K4TO0c2i29cfryRYD+OXoJVo6N89k3GFxEZfIM4p1R
	EsUA1Ze5LQBE7OClHAaYVicX4OUnUISPA4wlBGT20eNlPoHSkQOWQKR37XRUgn5jrYyIRqN0oMU
	uQ+Zm45moxDO6pxMlWtBWjmxTqEjUeevDQT5R/OeAzaRQFkbCM2h7/8UAJHR9yIJ/owM7Pm3TgB
	4l2Ng7zLbV1e6kuuBRPmXR19b5kYP8sIBmA==
X-Received: by 2002:a05:620a:19a1:b0:8cd:80f1:f460 with SMTP id af79cd13be357-8cdb5b20e52mr2244389685a.45.1773735644074;
        Tue, 17 Mar 2026 01:20:44 -0700 (PDT)
X-Received: by 2002:a05:620a:19a1:b0:8cd:80f1:f460 with SMTP id af79cd13be357-8cdb5b20e52mr2244387385a.45.1773735643531;
        Tue, 17 Mar 2026 01:20:43 -0700 (PDT)
Received: from oss.qualcomm.com ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4856eae3037sm51077145e9.11.2026.03.17.01.20.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 01:20:42 -0700 (PDT)
Date: Tue, 17 Mar 2026 10:20:40 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Peng Fan <peng.fan@nxp.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux@ew.tq-group.com,
        linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 1/6] clk: imx: fracn-gppll: Add 333.333333 MHz support
Message-ID: <sd6iwi57nfv7whvlzlnl74wgel4ka6zs7mc2imafhtgpeail3r@dotylxqzpr62>
References: <20260313070740.585043-1-alexander.stein@ew.tq-group.com>
 <20260313070740.585043-2-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313070740.585043-2-alexander.stein@ew.tq-group.com>
X-Proofpoint-GUID: yfGpazO7aP8wF8Yhf4E-00gnI-357YZh
X-Proofpoint-ORIG-GUID: yfGpazO7aP8wF8Yhf4E-00gnI-357YZh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA3MiBTYWx0ZWRfX1lU09i9x9JWa
 /XXSwT0KKZ4fNWf5Xfy8uuP401rmzrprUobYugm5TKgZaqrGMaVN8L+rNHMukCwOferfEvkAURJ
 MV6x+RnsorD1GXkB9PflxaAsDgnCDLwBeiYW3lTxDVrzB38L5ZDYDDm26SGMc0abhHFHPV9lqPs
 k4RVHU1uLD9ANJwsTMyMXEa62RXlATS6QVJ2CpFvcXIZNpgiua+HUzwLTKDl1F90nAQb04gKQyY
 ezWx1GWCZms9daS41TaaA9oAFqaOtSgiL0FOIjli0Imc+KaXo9Q8kPYo8e3/2K642q+XylEqGbV
 TBtxEmZOht5f9VBJc7IuV8FPOe/3GRSIyoqPKWbN3Fk5BI1V1c5fXZwfcw+bLR05HjboJPC2Qtf
 jImqueeukcK6gemKGvyHi7bdO13xRIp5vGAOYNClkZfjx7EU/Y8OrM6kr05+PvhWMJkCO9dkEVy
 xB58vIRQs5pRVMUAXCA==
X-Authority-Analysis: v=2.4 cv=ZpLg6t7G c=1 sm=1 tr=0 ts=69b90edd cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=8f9FM25-AAAA:8 a=EUspDBNiAAAA:8 a=LywSNKSTaWSAk7vVM4cA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=uSNRK0Bqq4PXrUp6LDpb:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 impostorscore=0 adultscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603170072
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276531-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,pengutronix.de,gmail.com,kernel.org,baylibre.com,lists.linux.dev,lists.infradead.org,vger.kernel.org,ew.tq-group.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3F26F2A5A31
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26-03-13 08:07:31, Alexander Stein wrote:
> Some parallel panels have a pixelclk of 33.30 MHz. Add support for
> 333.333333 MHz so a by 10 divider can be used to derive the exact pixelclk.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

