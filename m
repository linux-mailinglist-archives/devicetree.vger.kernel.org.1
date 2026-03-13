Return-Path: <devicetree+bounces-275373-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCYFLJQttGkEigAAu9opvQ
	(envelope-from <devicetree+bounces-275373-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:30:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 936C3286033
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:30:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 765BC3024A72
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:27:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 860FE3A960E;
	Fri, 13 Mar 2026 15:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cWkXltzQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DokCUhrE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B1B3A963A
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773415637; cv=none; b=dGncgHvm2JikpPbTY7PctdUTJcnxjWe0vNnYL5z51YqNxWzslZiGt9uM1h6XAi37nNrSfzan/TXx7/LtWiDxI6z+ImzFHELkqIPOTv85vVsYHLkwC0rE/EX/OFDzrq4gw5LODTHH1mD/qsvfMOwRbD52fSlGiFCZlI+Ddry4fIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773415637; c=relaxed/simple;
	bh=bDH9Pq0KtU1yV+EoQDg8wCu2cbr8jLtehsAB25BYdBA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=aqiJSisN3RNiqzFGW0YcHvHrbQQnsOYQVGjFWvlMfa2zcpqZQdlR3q7NuOaffrzJjjWRY/KAXvg5XEseVqogLGa9kVwygoT4ER94tiXhJg66BcqgpHPndBR+AkMOOanRt0CEqC+C0WRFnm7pAS3hsSU7+nQvIPLtC0eQGA1ScTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cWkXltzQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DokCUhrE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DEZ0Zf2262748
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:27:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=F8U4PIKke6HlndNuFPm2N0
	96OslToxo1A4ulsLBINdg=; b=cWkXltzQSNW3+VcNGrz0TCHrMoTvkR5WQLFhke
	uSnzfAQPb/8pSuv2OC7QtJE50YF1Ajb4Hlz69t0F3hYg3/eFRgJHRCiHTqdQ/POC
	QIeqs4tF74ZrhLhtcHrsY7jf/abznosqX3KIGcyq5zFEJB60ALco0CVxX1HJ7ZY7
	0fP5iB4ym7sMj4UBotOeuuy6vEen+SMs11oTTzluYvBFpn72JdizYl0ZlLiR7HYO
	/ySgVsEhnLxikmJOFPxWeSMUOX+g/zhHMMAX3wd1lmprGrSKiVmmo07Ob37XP4or
	8DQZ4RiRHKuvX4cJnpISxzQxXeZ7ub9uZgVXiidNvVR/8YsQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvef4skjc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:27:15 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd77e5e187so1262978085a.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773415635; x=1774020435; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F8U4PIKke6HlndNuFPm2N096OslToxo1A4ulsLBINdg=;
        b=DokCUhrEMNDNAFx3YSLRbYsRjhbGds1tIutUuxhcdzrxoIogIWBHyjeaXnRbInSScP
         SzzuF6tl24DExcnEad8uF0SvaIGFdm9irjzoPqjPr7TNmHcKmi9Dipl34kE/LDoY7CMp
         yICyp3ZpTa/qHoZL/Ak0XR5LifbUSANAVF4x6AyvczEro0cEouWFd8wagrpUvuqTGt+J
         fwUKWakfleEKs98PrT3/x9nsbpGnimO4pWxt5mFHOcXqDJHcxcX8dzThvYIbwIaKCYew
         qWyyeDv7upB0ma+jmnbmXjb98mQJnm5jsgewQYTMQTUPS73Nyx52iWiuAfxc4nmzA5zT
         nANQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773415635; x=1774020435;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F8U4PIKke6HlndNuFPm2N096OslToxo1A4ulsLBINdg=;
        b=ClDe59ozNjaXYQr/2CxgxRoMAzF5GNNJJg6OfOSdQYrInQ64STJRh8kH/L8zGfMjwq
         9YuK5aP8Lp9Qqu0CKFWgNHcIr9DraAYZjet2OxmUbh5jKep12Iqc88Al2mPyAWTVNz2K
         UNGgcjMlQizpmL0NO4aiQMVTlzyitxDvR9a5YIjl+25tp5wkGbEWizxaTc2Xjfcc2sP4
         UjikDp1qhZeUErSAyKYnBeLA+ik26AmHb858lbZ3Qk8YmKRcpTPCRcEyJzINxoZ5PnOK
         WbQmwV1tbEjPd/95X/1vm43zchQMzBE2XhmM+5pMvu6DmxnSygnXQci6Sk2TH+dG66YF
         s/EA==
X-Forwarded-Encrypted: i=1; AJvYcCVHFU6qsNYS0iaS/g4qk/h9HOFIPmxx33374Gv+Xdom+C19cSQdqaBEqZrqOUJa/FzomWS0VBi4ZG+O@vger.kernel.org
X-Gm-Message-State: AOJu0YzZ60xKFSMY3OtN7q9YyIrOfDhUVtzFO6BvPrxh7zROv0i+ZFA+
	o5xyfpyGsekLcmSLohnFIrUp+kLCIi6j10UhVbiuHijXxmDbhT1FuvfqQO/VM/inwl15jT7Fes8
	U3LdnHFTjYZGyXGklbB4RYTmvKOWi2G7lkRbbeshKt6tyoa7cVrLllOgKSYpaRR7Q
X-Gm-Gg: ATEYQzxG7VUtaOoxN1hls+fzxcIqlfPss2WmrdMJOeBm992Rdefe0f+/nHjzq8edXrt
	qQEc2V1usSKIMQ/IUEyeQkMJHDQ1XA2ISmBxV3jQpZIGYAW2SYo8esfYNFnHN7AZVGNcL+cIon4
	6diHI4av1tVp/fUyie7oahk/FI97qVIoI5Rus26YHfCoYD82yYS1VcoKF6Kv1ncd9vz4sWMKMeD
	QX0PeO4bJmSFk/9ejhfclbcq9QWuo4Qf7lPl43CeBDy6nRcVzweCjjHqdOjUo2xsRexZeQ8r2x2
	kcLpK37eVFA6jLRNIbFjZFpy84J6H3KMozqR2zKpzH49cSa9PlFAcmUpPPUGpNnNw0ESfAsXdxE
	K5eJJaWplTbQOe+OUoeeYBOI0ikrCp4SsadFmx05lXzROnMm+v+W3dZqW+byiAFJ0XQU+no56rF
	2AC6YIUdIgwqVdKfgmufOIg6IZAuNydsSe5yU=
X-Received: by 2002:a05:620a:6cc2:b0:8cd:972d:328 with SMTP id af79cd13be357-8cdb5a692c1mr525537985a.24.1773415634558;
        Fri, 13 Mar 2026 08:27:14 -0700 (PDT)
X-Received: by 2002:a05:620a:6cc2:b0:8cd:972d:328 with SMTP id af79cd13be357-8cdb5a692c1mr525532785a.24.1773415634069;
        Fri, 13 Mar 2026 08:27:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a155f33c0asm1603328e87.18.2026.03.13.08.27.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 08:27:12 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH 0/6] arm64: dts: qcom: correct Iris corners for the MXC
 rail
Date: Fri, 13 Mar 2026 17:27:07 +0200
Message-Id: <20260313-iris-fix-corners-v1-0-32a393c25dda@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMwstGkC/x2MQQqAMAzAviI9W3BTHPoV8bDNqr1s0oIIw787P
 IaQFFASJoW5KSB0s3JOFUzbQDx9Ogh5qwy2s2PXmx5ZWHHnB2OWRKIYohsm60cXwgY1u4Sq/pf
 L+r4fMHP1sGIAAAA=
X-Change-ID: 20260313-iris-fix-corners-bc7492a67bbd
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1349;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=bDH9Pq0KtU1yV+EoQDg8wCu2cbr8jLtehsAB25BYdBA=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ+YWnfMM50+GyFmt0l3jMUW5dO3m9qU/Wd0uW2V9m1wn0
 9Hxe2tfJ6MxCwMjF4OsmCKLT0HL1JhNyWEfdkythxnEygQ2hYtTACaixcXB0P0xzrYkqX22C0eL
 rYQSv9FSx8Ip0431MtoWPmOPqFTonrWK+cNu5h85T94y+xvfndumfVD9/Z1piT31x1Ki1vUc9fJ
 9/D3ytCj36sf8KYHTIhrl9RR/vs2t/1q82dC8pO/v8t5QmWdl7M3Wjra5vSvmpl72Df+msFHXsO
 qvl9rSqZkZZ5LmsyUvSP79v0Fb3qjjwr3YZYdt9+/5L27KkGxz7ab1n/xFy25EsUSxRuhVZ/SfL
 ZCvuyj0cXH6DvZ7srzcojw/21dM+bpMZOLyv4aFt4s7EgVP+YYXlCTnHlo3ZXJ2sc2sXX7Pu20n
 v3hS1i7Ul/srlvV46IOQ2WfveXKtTkrbIf7c5iP7zz8A
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: vg35VgjoIt_8q3EzIbPXQctl4VjN8wbA
X-Proofpoint-GUID: vg35VgjoIt_8q3EzIbPXQctl4VjN8wbA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEyMiBTYWx0ZWRfX4WAjx6h3hLrs
 DPN+xkwhWXGuUf76+RLfOUEh3FDfnlRKRrAR3/i6mFbMRPgxNylIu00wIgJUvYLsmGjp7sXbLz2
 JnrNvvM/E+iN+f6qW3OGi7Q0metl+zrOU++Xwjr5QysBpw33d4L2WHQ3qMqAGiewAxHhicS9Kx0
 CaWFizcimxGaOK7FR39H2NsTk9ow6AZV7cOZFPOH4ylqr1EoZoO1OkZvwiPcQGBOML1KrZS+cb9
 EtRYOMoglIuoec39Cm1wKmceDTHsxbgKIElnMucZC5xwjNI1/u7gEqtCqm03QIvhBvgr1veVAip
 FSTQi/1sFZGcHZetlHUAQf/5Eu7ulxixQZBPLsrzi5dWczw6jnaWZnC4TfjRyhHuofo9Vf8eR0q
 2MImwxbhahyfH3fHEDehr50yPRCiv6oSLdy41zsP1fUSiQwmVJh0TZ6Z5taBMbUL/oD2iEFEK0z
 bwNQbi7r3MJf7k+fNHQ==
X-Authority-Analysis: v=2.4 cv=S9nUAYsP c=1 sm=1 tr=0 ts=69b42cd3 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=WtK5cIpkWq8QS4eCI5gA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 malwarescore=0 priorityscore=1501 suspectscore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130122
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-275373-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 936C3286033
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The corners of the MVS0 / MVS0C clocks on the MMCX rail don't always
match the PLL corners on the MXC rail. The slightly misleading
documentation for the video clock controllers doesn't help with this
subject. Correct the performance corners for the MXC rail following
the PLL documentation.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Dmitry Baryshkov (6):
      arm64: dts: qcom: hamoa: correct Iris corners for the MXC rail
      arm64: dts: qcom: lemans: correct Iris corners for the MXC rail
      arm64: dts: qcom: monaco: correct Iris corners for the MXC rail
      arm64: dts: qcom: sm8550: correct Iris corners for the MXC rail
      arm64: dts: qcom: sm8650: correct Iris corners for the MXC rail
      arm64: dts: qcom: sm8750: correct Iris corners for the MXC rail

 arch/arm64/boot/dts/qcom/hamoa.dtsi  |  6 +++---
 arch/arm64/boot/dts/qcom/lemans.dtsi |  6 +++---
 arch/arm64/boot/dts/qcom/monaco.dtsi |  6 +++---
 arch/arm64/boot/dts/qcom/sm8550.dtsi |  6 +++---
 arch/arm64/boot/dts/qcom/sm8650.dtsi |  8 ++++----
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 12 ++++++------
 6 files changed, 22 insertions(+), 22 deletions(-)
---
base-commit: 5c9e55fecf9365890c64f14761a80f9413a3b1d1
change-id: 20260313-iris-fix-corners-bc7492a67bbd

Best regards,
-- 
With best wishes
Dmitry


