Return-Path: <devicetree+bounces-257848-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8K9VGZyncGlyYgAAu9opvQ
	(envelope-from <devicetree+bounces-257848-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:17:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BD27355133
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:16:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 860DE64B595
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:58:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2735B480DF2;
	Wed, 21 Jan 2026 09:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GoAx99kT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MzeKQjcj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFDF4480964
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 09:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768989434; cv=none; b=UTU7s6EzHa+G7IIZ782WYeQ/RqSOvq08o4dU1H2c6GLLsEl/rsNXAUUbL60Cd2vePn4yZOQR8k2O/OLLiRQvLKWOyVPFy0ZIaKjLZtoHTAZSGpbtg6u//IsLKMI7R4gxeX7IbF6saOr/SpseYWZeU3ELfPl1ojiilr1WAmjc0F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768989434; c=relaxed/simple;
	bh=kwb3y/FdwrcBhxAAfQey0AHABNXVgwKVot625G+9RME=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=p8SGoCoTaTHMwK2kFPIYrlhX1v6Ngxi2/HjCRtklECd6N+P9vKZ8nNTKTufKiZg/LfkwwzBXbJnlHcvUL53zz4JUm59ayL+xg1sk08qsIvsnqtSwUH2EnJD2qMtmpUZjvhytOo06ero+0Bktqmom/hDc+M+riTrlTHytH6LEweU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GoAx99kT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MzeKQjcj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L6XKmE2938419
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 09:57:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	k/nHra5KEap/fFQTiNZsHo155KPMDC95QG2PRVp+dU8=; b=GoAx99kThTUykm4x
	tZH3DF8OCS1ebxUljbt/5rhEHBmoGaSGDvgGPEzQBEg5pQE0faUJ3hH4H0TtQpiF
	cTBLbVvANLSj/OTFogOtvCDx3TwFdGRZcpeZNWt5xBQMigIeFfNXqGvTbg7zvFlu
	QUiIHk6nOxUiuw47H1dfRI9DLSLX8KeOmao+vS7U2F70vE/RBtCDq2ZIkPqQPYTX
	+HMnlLD9ZNkJ/GKYrmv/+36WWAxhE5Ke5NAaVpLb8ETs/m3+3gKZ15wLIfDMN2wh
	a92/KkZDnICnUiwKcMslr4QF7toJ43F4bgDJh7agXOjE5KCq1cpwKa2YgfSuOhn1
	0lW4UQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btsmu8x4j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 09:57:10 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c52d3be24cso777898485a.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 01:57:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768989428; x=1769594228; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k/nHra5KEap/fFQTiNZsHo155KPMDC95QG2PRVp+dU8=;
        b=MzeKQjcjnp93lZ2bcHMztbksjuB/bmY7T8G27qGSYYwhwBFYPbM09Slc0a9XpvMe6+
         QiYG2YqvmAsOvNvRdt5adOiviRHEs+1jBJuLt/lUTNnOtajpaEPWy+ykqXRaA/lqFqCm
         Ty7Io+Jj42/v0aDKLMg0srAUh41xSfV5W4Z3GhFPIFP9dY+uoCmC7kXStL5aUAAbBBSK
         yHApM/1KD+niTDsNyKbJykPchYY0mI+zyy6iXjIhS9jmyaFzF/XEOfaw1qFFWsTnMxTM
         wQvwfOdxrOa6A6hZYG1cpmOWMktXbSJ2kFnYkplgSI1VB6TDFYHjy6hJVyVw1dHBAsby
         dUMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768989428; x=1769594228;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=k/nHra5KEap/fFQTiNZsHo155KPMDC95QG2PRVp+dU8=;
        b=X9gcHvdIaGMeU08LJR3kdFKjkNorCVp6wlurGDwSpiBSxoVqK98T39HUsg46etkvPU
         lh9KIYNsrImiDTyBn/vEIhhs70ZaVcT6utpzLrEFmvBFnKX57rAMQsXGUjmsj50okRke
         mkt00e+E6Ag+yq0g7WBWo4fq6QG4PvYLpqeSS/Fo2oxmZunSZOz+CPdxgTOvAicjKftQ
         W2TB1kF6J6gIK5fkWDG+9iQoWCBiDcmyUGPmlXrAA4bcg+ilNK8tP8+Ot6xvoYZnL6Pn
         NVRAFfQ57AdvIN0VXJDmafRSRsT2yA+Hexb3M2I9bJksIQzko3d7g/E+/KSHm4uOqyRq
         /m7A==
X-Forwarded-Encrypted: i=1; AJvYcCWYmMXUrVfikdv1jJeY0Gb2XexUIIBDmdg1SZchyc9K/PROwuQzA/1r3iZhzkVyMl8DcBhijQw/TtGs@vger.kernel.org
X-Gm-Message-State: AOJu0Yzphm1UEfO+RPiLw8MmoqLyYINCTtK5Z5B56FlPPIrDMw47du3P
	PL8sPQd9Ifir3Q1l8Zr6z1yI0D+ie+n7AthWyfLtPlD26MNdDYuetPdm66bbkuJLxkS1VCm9/Y2
	OLP51KXpy7KzV5PcXB+Hd91MSe3MUBQjfc2h8/EOITdYTfwLo2Ipq/oqsjWLq5OFS
X-Gm-Gg: AZuq6aIEtZ6Dn9jKvzF+gugudS0Pvxc3SIRtiFE70wTyZHDvuRLCYFOX7kgxy3iJ2A4
	gHIJeycYEKr1V/HL/lUOcoqt/E2Fhl1JE77wcJJFnroK4Wb44v0xBDvU8Z7+1NDXQsAPvanyG7W
	GleFo+7o1bPhQICyzI9Pn7ND69UW7OwcflpUlgvEqg2TrX5liuZVgIaJhy3qJc7oFD4xrYHVaqt
	Gzjdew5TIojvfVxsbcP8fdlpC8NaMs4lflUadj2Ga9gnBqr7t1c3T0aCIf9oFPfrjbsAqHPJmWe
	bg8h/pYmjWReJ0w/xPBbOBRgNUfHjOUGhwxMdGELhspbrr+moL46yoGb5JVMXyaXtIZA1RKs+U/
	DQ4TCJlz4iNVIPVOTPLqoDLx+Fj0xlrHGYJGPs5wGqnaKTEBbaTypXppFD6vk/IIlncim4NMtms
	38P7dEutdJtcAAOg+3QjwR/bM=
X-Received: by 2002:a05:620a:7003:b0:811:f742:c752 with SMTP id af79cd13be357-8c6ccea9c30mr592048885a.36.1768989427988;
        Wed, 21 Jan 2026 01:57:07 -0800 (PST)
X-Received: by 2002:a05:620a:7003:b0:811:f742:c752 with SMTP id af79cd13be357-8c6ccea9c30mr592046885a.36.1768989427487;
        Wed, 21 Jan 2026 01:57:07 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf39c051sm4611385e87.79.2026.01.21.01.57.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 01:57:06 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Val Packett <val@packett.cool>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
In-Reply-To: <20260120234029.419825-2-val@packett.cool>
References: <20260120234029.419825-2-val@packett.cool>
Subject: Re: (subset) [PATCH v2 0/7] Add support for ECS LIVA QC710 mini
 PC/devkit
Message-Id: <176898942666.3623549.5303454776201288552.b4-ty@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 11:57:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=OaiVzxTY c=1 sm=1 tr=0 ts=6970a2f6 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=JfrnYn6hAAAA:8 a=BZ-WrxWMS1R5eIKT--UA:9 a=QEXdDO2ut3YA:10 a=UJEHjhcojRYA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-GUID: cIO_Rm2tK6YXEVs4rtmlaqNvLHEV-t7h
X-Proofpoint-ORIG-GUID: cIO_Rm2tK6YXEVs4rtmlaqNvLHEV-t7h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDA4MyBTYWx0ZWRfX0TTcDmfmsI0M
 jvEr3NuH/wmpE5buufoqULZmjlkWJcvOtqzyTNjwgpYUDDBYqaPczA7a0RdpLBRZUb1heIceEuW
 A11NE5JeCJeUr/4P7OTz5dvRJlY6jXginUP6u5f1/lu8dAPAUD/xHkES+YBqOSHyQlDHSjajzui
 YtNHh0na2n1oS21DCcinSn5jU0WaJQEMEtcCbemPGSgNIYgbIg3vHvHv538fs9QjLzvPbmMpCXp
 wQ09Wvsh7p+paROFjiEKkzsJu6PK6btY/o+bxmGivYXvkzmRD2uhcOv5J2TjVf6fl4Yfqob5oAo
 uQkp/Gauu48NT3k1ne/MKWbwgIaEQ2UL58R3uyjnuyIT3x5eAi7ICrA5X2npqcalBqLWom6RyUt
 UUnBfeGsckUNS7xTpCb8nJRU6SzZfKjV6WxzRDoyJztuBNFWIIWdpffyos3omCSf3ANtU7FggeA
 Zrdc1Qvzd3I+N6+BwEw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 suspectscore=0 adultscore=0
 spamscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210083
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257848-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,infradead.org:url];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BD27355133
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 20 Jan 2026 20:30:04 -0300, Val Packett wrote:
> v2:
> * Added missing dt-bindings:vendor-prefixes patches
> * Applied suggested cleanups and formatting
> * Dropped power-on disable block
> * Added qcom,uefi-rtc-info for the RTC
> * Added qcom,calibration-variant for the WiFi
>   * Board file sent: https://lists.infradead.org/pipermail/ath10k/2026-January/016719.html
> * Added a comment about USB ports on the HS hub
> * Picked up tags
> 
> [...]

Applied to drm-misc-next, thanks!

[2/7] dt-bindings: vendor-prefixes: Add AlgolTek
      commit: 00e6f8f60601b412e400873c8972f3e3802557f3
[4/7] dt-bindings: display: bridge: simple: document the Algoltek AG6311 DP-to-HDMI bridge
      commit: e58be49a9a09112fdb4e4d68b4653a2545746091
[5/7] drm/bridge: simple: add the Algoltek AG6311 DP-to-HDMI bridge
      commit: d51e390ae84857a999ad2046e074e97663e98e36

Best regards,
-- 
With best wishes
Dmitry



