Return-Path: <devicetree+bounces-257847-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MxTHHqmcGlyYgAAu9opvQ
	(envelope-from <devicetree+bounces-257847-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:12:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DC755007
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:12:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BA3ED8E3B07
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:58:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 652A6480961;
	Wed, 21 Jan 2026 09:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VvvXsGd3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="D5NmbDGq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E1747DF97
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 09:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768989431; cv=none; b=hG2yqej/vnEzroADT3r4mhVWBEw/DZ91zUeQ89IlFblSdMQ+5jXcbTmwqIz5R012BXcTTGJaF+dk30S96yqd2xOu7xZUQINM8aSjoJIaIKtnjQLQ0//U1RzCTdMTWP87PNorfyD5cKpDauq6enF/N6Xh07yN77omfxokKZg9S3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768989431; c=relaxed/simple;
	bh=zI9dMyVMHtnq96Wh36X5XiGYaX6RWlmq4ebKvg+Hmqs=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=qxML/WshaYjZk92AJeSuZDkB/YkZtLoXMhDnaCtKaHkLRxnJL+hi+zixSIuSbZAKrkROGKMP/KxsKbZZ5pjP/K6TO7ElbR0utg5mN+XuvHo4G4FVDYXVQzy0wL+bFVON057O6BqOcGO+3UkQ4dqgdYg61K3cnRSE+0X5XXvyBDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VvvXsGd3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=D5NmbDGq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L9iWet3481474
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 09:57:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tUguWyv6qDysRQh4SgxQ16x6/vrpSNJRBnc+LJzfj30=; b=VvvXsGd3e8qvDtz2
	jr9LEerDtKeT0mL6MtbQCRY8IKffc3WFQ2Rzcyvx4wAlQh9gfUvTUp//bu0qeh6k
	f6qjmymnGUqclslNj35CRpkujiY271PDGfWJ66JHD6f9hzYvtiE4gqjpBQR6ov8N
	NlkSMN08YadhQX02aP1ZszGMvVxkoFrBy362QCeQGIEXMgKxj1gQufZ6qRfY3ITv
	BTTr9O6AEI7fa3thVXTiRGs98VaDr3aCuSMbWenw8PI00lpcYjG5NHzBvhqfBaYV
	w04EuJaM/mob+58sMio4zDbGXzbMySW/BK5qxkVpcj2Sy2OYJMCB/lawhKpUf75r
	sLc/JQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btvef040u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 09:57:08 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-89471437f64so20284356d6.3
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 01:57:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768989427; x=1769594227; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tUguWyv6qDysRQh4SgxQ16x6/vrpSNJRBnc+LJzfj30=;
        b=D5NmbDGqA2rX17pnJDDJHLWeVFajcfRXU+ntK2igDRpicGAkrF+yUudEVk1uY6DMTX
         Bi3Syn0UzOBqo9pEP9tW2GojeIFKXoT96Zq6Lu1uDEipP4MzA2Z5opiE0yBuCOHsd0W8
         O8qjN6+9NEnXPbxr5aMklivy31qN/GrwEt+3pJO/5y00kamLP62GiX6IjAvPU6ZeXAwG
         MFWGQn1o9ddlSUJvoLG5qnDgYmV/y9QMq7tcOe6KACe+KlQmdoRckzudpx+Cl4VCYi+9
         AgMOv/M4DLxYhIH5U63Btd0wfN7PvIJDpa0PGe+eFGDlBH3Pcgfi21+zPBVjVPAnZe9M
         gxkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768989427; x=1769594227;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tUguWyv6qDysRQh4SgxQ16x6/vrpSNJRBnc+LJzfj30=;
        b=HFcFY2JwwGkCoiivEE+X+qoevHtPaKEZn4FQthM05E8PWopiPxQD1+44A5H0Vi0QaI
         MRIPuF0w0kQUv/odUX1w8XsfFTjev+d4m2ODaGQ2eM09bofBCoAoyizgY6yjchLkjDIC
         UXX2dCAV1UIKmZnaM+lAqDOLLr+YJEZQEEJV6QxOHHECs/OmVocgpdEGxBXXV25n2B2n
         bbsGxp0D5BHlPdP4rRurzDp9Lr6rpeSlFpxLNszyRjPxor6KP5PcI5GpLup8qMln+B9t
         Kawwe/Wn6uKb3rFnF8BdsYmxQl0FBTVlUzuSOcntNVb6e5w+PMllZqQpNcQGePDnT9zr
         bhXw==
X-Forwarded-Encrypted: i=1; AJvYcCX00ft29Q6LDXOnpAltyZFQXRycUTIfmbml2T0r+H4P4BtThGwPoPup5hYGBqhXZP3syBwD2FYXWJ36@vger.kernel.org
X-Gm-Message-State: AOJu0Yyh6248Dl4qitWXoXHXA4uhzdxXWLbF2RcrDyoyjgxhRHWg6qPl
	Vgduz8yb7SSzFtExQcn3xgMshiR0wafihGSd9/g1t7E8v9yJNeV/XlI025xJFGeN/4DkoEZh31E
	sQGydyEKynzIG0NbRyVgdU89PDMBOHOJ7cDC6wIH68oFBy1T0Ki2djwl2fCzeT7Kp
X-Gm-Gg: AZuq6aKsweEi3tUyM9w+7sfeBiEeYmF7Kp6/Bu+K9ubodb6fBje8Fyod8RUOQf1NMXO
	N7kIMuh5WKCLDqFfCNLJk+xgH7Ykv50tJEnEKGlWEja34P0EqbzQk5+49wOqLfjsJA08YEEciZZ
	CATDIx9Pv1GDnGhxtGriupxrnfgzho0NnbqbBI82g1JrZgedwTY1nel6OOJHRbfS08JlBht2CLU
	3LRFqTBa8tggGap++KEzyKH4LMoO9cE27YrNXAfHBmVk4AtuNd7d9c7TQUa1HSzAHVq83R17UWH
	wKguYBd/x5N0jBnTdo9TADHrwIGHIbiCLdfTXSLEZ0ah0cC2JOUp0nrkUJ4JkUjRmEXItWeqa5O
	PzELola2CCt8a+o9PEYJrgQzYBJpA5uASDxruO/Xof3vaD0v/Oip8yRH7xpEdQdmX5YdC3Ejfjm
	GqXGt83MpYH68feXwqdtM0Css=
X-Received: by 2002:a05:6214:1d23:b0:894:61c8:930c with SMTP id 6a1803df08f44-894638be95fmr55512506d6.6.1768989426908;
        Wed, 21 Jan 2026 01:57:06 -0800 (PST)
X-Received: by 2002:a05:6214:1d23:b0:894:61c8:930c with SMTP id 6a1803df08f44-894638be95fmr55512366d6.6.1768989426507;
        Wed, 21 Jan 2026 01:57:06 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf39c051sm4611385e87.79.2026.01.21.01.57.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 01:57:05 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Val Packett <val@packett.cool>
In-Reply-To: <20260111085726.634091-2-val@packett.cool>
References: <20260111085726.634091-2-val@packett.cool>
Subject: Re: (subset) [PATCH 0/5] Add support for ECS LIVA QC710 mini
 PC/devkit
Message-Id: <176898942562.3623549.3607046539318792338.b4-ty@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 11:57:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Proofpoint-GUID: yCgQ_0dQnfvtIz8SWwKvQUeuqfLir61h
X-Proofpoint-ORIG-GUID: yCgQ_0dQnfvtIz8SWwKvQUeuqfLir61h
X-Authority-Analysis: v=2.4 cv=CYgFJbrl c=1 sm=1 tr=0 ts=6970a2f4 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=xMBfJuUfU2nANvzb4K8A:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDA4MyBTYWx0ZWRfXyqDaS9F01CLY
 e3jbI/m92yrEUx9+Zrfn27MfIY0DngNHMcXqZaTRqb5tXS1EMX0OXqC8L0Nzk5FW/OPfGi44ixW
 9dokksvJSIT2x9pqorqqOU3d5PCOzIWwiWXetAe6eNHmyqJ/JUkJSRZVJYw4qwPp0WyOelMnFfu
 XREV4O5vLFtNEeRiQWwBxSGwXzbIdwJ961PLkBg7PqVyJgAvSE4yjAt4CnM6eCDc+hU0oF00+pq
 J7Sx3XrA5likUfpmkdAabRvAMKVG+YZSMqQlyPEJP1mtGZCCSn5h+VU1R5bLuPpDVCfTgIrh6vd
 BG7obtj+2e7IFh7fTCxLbV9FI1C5YkSQIpJUPebPTDht+JA52HunePjcGR/naxkCJtdRdAYxPJN
 ETORm+Vj3ljnIFpj2y+iP2BmpQH0BHO3kVokZ62mCbBsitNjk6RLzmw4D4OQib0GL5I/yausLBo
 vDbqJyCeJH+4zZWjeJw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 suspectscore=0
 impostorscore=0 adultscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210083
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-257847-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D7DC755007
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, 11 Jan 2026 05:35:08 -0300, Val Packett wrote:
> This piece of Arm history was an early Windows dev kit before Volterra..
> (Though it holds the brand of its manufacturer Elitegroup, not Microsoft's).
> It's also a cheap device that can be used wherever you need a mini PC.
> Now with Linux ^_^
> 
> Most things work, including Wi-Fi, Bluetooth, USB, eMMC, microSD, GPU.
> 
> [...]

Applied to drm-misc-next, thanks!

[2/5] dt-bindings: display: bridge: simple: document the Algoltek AG6311 DP-to-HDMI bridge
      commit: e58be49a9a09112fdb4e4d68b4653a2545746091
[3/5] drm/bridge: simple: add the Algoltek AG6311 DP-to-HDMI bridge
      commit: d51e390ae84857a999ad2046e074e97663e98e36

Best regards,
-- 
With best wishes
Dmitry



