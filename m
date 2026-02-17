Return-Path: <devicetree+bounces-265983-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNmCA9kalGn//wEAu9opvQ
	(envelope-from <devicetree+bounces-265983-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:38:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB21149390
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:38:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id ECE9C30028C5
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 07:37:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3644E2BE03C;
	Tue, 17 Feb 2026 07:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GBgCyxt4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CR5UwbIu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DABE17993
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771313876; cv=none; b=QfcxHfxZv5WBY0YQnbgFOsdXcavGNhWV7Bphht/rVdu2ETTZvXUT8HdydwDU3AfBzw2WHmRpMG+2ls4P53BbYJpGdrBeueEqnWfitgLoqud5SG5ejDf4Y0zEgIwnTxjwInKCCest0HiV25uLLhLeNbsjaed9ahqwJt/U85JZUwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771313876; c=relaxed/simple;
	bh=y6lCjflSgJPPFMmlFO3Pc1EIf3s6AYfeHGJLPlnGntw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Wm3QAVQ1uKHwN2O3IxsA4SG9NrdJUo5/4qdKL+UWsFjs34pPsmAzk0AuV5i4kisme2T0BegQyvLYjisJr6I7BCBI9RsliMlbzGQODaFjXvFKHbsfzJOlc7pe1x5jOsn12hKqgDFJxjrgzaDlGgKNLn3HPWn3nXSuwzwD6uHNzvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GBgCyxt4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CR5UwbIu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GH4RAZ985203
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:37:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=14xXQ/3V6vn6vL7UT0TVLL11
	sJ9Z3fyzvo9w13BRJcQ=; b=GBgCyxt4tvgxH2I2F/I6tQMRXhKPo3lYFvErgj8P
	fzylBQRHWsYUuUy8EUKDYrZdnq4wWkCeHlmBqmFU/BxZMLYiRs3J5ngCZHF5H3mi
	Z2uixyxRFsHCnoKxRIVz1oQWp4vBaH1P5Kv8n0e4uxSZ9Eqx/AUWbOwlJRnFDf+G
	BSWpzOvBVCsMUEM66LDpJKtRtTQpNncUcmyguycUMaATGicSHLYfSC1fTLxNPXT3
	52DcoXNW4h4u3u+eKzZExILZOMu58JFNVGGf6VNqX/YKy7q5oL1lu0KjjDTVL+oy
	O4TVvoy1aY282ahicQlH74W4tzlT4eAd+uCJdgu6hdVlYg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc7ap1dkh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:37:54 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb3fae6f60so2613549785a.1
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 23:37:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771313874; x=1771918674; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=14xXQ/3V6vn6vL7UT0TVLL11sJ9Z3fyzvo9w13BRJcQ=;
        b=CR5UwbIuwHULyhGzup3mQprdJtG151gcnxnWj/BN6kZNJ6C0L1UHN8jLjDbODI52lL
         rvTex0vs7TJ51PPylBI/7YMSvgqCx7PcC7qemGtZLRkSTc6edzyY+fXSJFm2LB27lUGy
         RG0RTVBAqTyjujFUTfkzAhexXSars5OIiOQkPdKlHe5v9AyoeVvv3TMAeYOK7yE1KaBu
         k9D81LEMO35QSSNGQhur887wKDs9Ddho7C14O5IuU0itLpdoK2Ri9taMtGMUUwSw7JM3
         ShGFgSASbFUHEaEeoBfscoND4nbHtu1275ebYZEZSGVOex7lNCgaqWuXTjhIOIAQxEMy
         WBQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771313874; x=1771918674;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=14xXQ/3V6vn6vL7UT0TVLL11sJ9Z3fyzvo9w13BRJcQ=;
        b=sUuv8128i4AeupH7Jj7eKt2654Cr3LpYssR2/awMN7Dskzqv2tyTAQJ2aZjjknxVPU
         2kUEhm974jki6E81NOf5BbrsuyJ9RM2hzy93e9Dr987YLz2FO5ZdoUpuENLomuHFNCIJ
         X7/z6jVfIoZyR364HESP422Og8dr7oIi247dyzSvJJBTn70EsbWPYszOHaRvhOLGtwqr
         9Ld/1NvgF9QhKninnHo3qUcmXSqyq1a7UwtVQW5zCK8AzyjOWwnkKUe892fHAcQrkOTF
         HnW0HCiV8tBxqYSAY97HWpsqxLdoYmQN1H5pYTY5xS2NTk7iIevuhfKXFn5jMXE006Tn
         UkkA==
X-Forwarded-Encrypted: i=1; AJvYcCXcy+aROM4vmQrmNnz/SGlneZRu3/Nm8JM73q78m4tp+lDG2VfkqevuaHrIrAWnmhbrgZovrjEgpY9y@vger.kernel.org
X-Gm-Message-State: AOJu0Ywe+HhrfGg/E8EDDGegH8HSb17KlEUqso6DIYf+fk2TFQdpbhxz
	Ehcy5T5zKoyyVLlFp1OT9vz5VqOR2KazVeCHTN64sx28GWOb2am04cfPFSci+H/DtPt67ZFIXid
	Y3F10EWPMllRKWhX/YK5kcYMQeqM28ViHZx1Bqp2csZstP2NLjrRt7Z0Gx4WS83+3
X-Gm-Gg: AZuq6aIqa/VrVmqjzlobMV50iGNwlog0htCB7wYbZNO0Anu18KAlkE8u0tv6STg9yTk
	LaF5zvVJOTDeMMZjIrv9Al5HK6mT0RIYBc+devCTUNmou8DtG1LrUptIPXnbp7sZnJaGO12Y2F0
	Wq1/33odVBiH40lmqYgvAzw3aYzdWOsrtMtxq7nitm+Txd6ZIkJYkqbFowIa4moWMJBjtmhdIrg
	rHZ/xX2ZdWES8/25giU4h4jwOy/BUkKQYgLM5pHQDH5rxJywoQRshL3Ru12J1D7lxRgWIXIdDVk
	ioHvl1ojcTzRubZ9S57pGg3Z19tbmAO/sFBIhsU1NCNeHn8b5GGDKxYrBuW9jjFDZlhbgRSLNNX
	g1/S4OkfvTcLHetUTLjIzTw3w881vKy/ScawSjYSoyADB1eld5U2DOr3FGOhHYbcjU2tsGmKV7t
	0i7pQcMuAadEliC7k6tulXsydV3h4D7qcnoV4=
X-Received: by 2002:a05:620a:4591:b0:8b2:e17a:17e3 with SMTP id af79cd13be357-8cb4abd4053mr1225250285a.1.1771313873598;
        Mon, 16 Feb 2026 23:37:53 -0800 (PST)
X-Received: by 2002:a05:620a:4591:b0:8b2:e17a:17e3 with SMTP id af79cd13be357-8cb4abd4053mr1225248485a.1.1771313873165;
        Mon, 16 Feb 2026 23:37:53 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-387069259c1sm35151071fa.41.2026.02.16.23.37.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 23:37:51 -0800 (PST)
Date: Tue, 17 Feb 2026 09:37:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Val Packett <val@packett.cool>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Dmitry Baryshkov <lumag@kernel.org>, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 6/6] arm64: dts: qcom: sm6125: Add missing MDSS core reset
Message-ID: <mxjyobqlpaxhlnbjoef2v774hbim6hlfrc4t4z7noactacp4if@zpjl24dgtxpo>
References: <20260216233600.13098-2-val@packett.cool>
 <20260216233600.13098-8-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260216233600.13098-8-val@packett.cool>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA2MiBTYWx0ZWRfXz0l2LOoNLGoV
 jChqEMkYdCB9ymdcqO3mlvoT2wmmYPkNmxG/5Qau1Xq3S9fZp/pqcrDGrzW+JFxnWLNQj2tX6ld
 0tTaSK+9yymBsYJK7AFSLnaY1/3vAWUCVPVtujpKhEQegWDb4Bs5bVcDTFjzOWEo2oKQqBtm26G
 e622SqayQHNRauW0Fpg7iLtZfl25HETlhkhm1xhTnIcolPRnsygVqHX1V6IPo9gDefYTmESfcG3
 aWNYZqMJrjt9c/WiaYuFw1nuK/oPotf2gsgvk4ht9eZZjHyAmbBrkaOT0x9l8lHXQiJsmrQSdU5
 HkwLrORbBI14FIdTQjIijgTdCVnPRPvZojIJz8E6N9qqcad0AQzZgRBukFwQQx4fhhf3Fyr1qzu
 MwIQEBtPndPwdyeqUcsaKlLljmGCVMRwS1Ab3TodpqbXjrb8xBY+FgKCtq50Y4XuQGSICqu6NcM
 bxt21GE7Pc5B+7PutRw==
X-Proofpoint-ORIG-GUID: 9tyxukxYmkfb8-y0it0FDy8Ejto5wBUl
X-Proofpoint-GUID: 9tyxukxYmkfb8-y0it0FDy8Ejto5wBUl
X-Authority-Analysis: v=2.4 cv=Rfydyltv c=1 sm=1 tr=0 ts=69941ad2 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=xTuMNDBKoo2s9YD98OgA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170062
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265983-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,packett.cool:email,oss.qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3AB21149390
X-Rspamd-Action: no action

On Mon, Feb 16, 2026 at 08:25:24PM -0300, Val Packett wrote:
> To make sure the display subsystem starts in a predictable state, we
> need to reset it. On closely related SoC (sm6115) this has caused
> DSI displays to not work.
> 
> Wire up the reset to fix.
> 
> Fixes: 0865d23a0226 ("arm64: dts: qcom: sm6125: Add display hardware nodes")
> Signed-off-by: Val Packett <val@packett.cool>
> ---
>  arch/arm64/boot/dts/qcom/sm6125.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

