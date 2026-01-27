Return-Path: <devicetree+bounces-259882-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oNGoKxmveGlasAEAu9opvQ
	(envelope-from <devicetree+bounces-259882-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:27:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EDE94532
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:27:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 54796309889F
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:23:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84BDC34DB6C;
	Tue, 27 Jan 2026 12:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZkHF303U";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Iapn7+m5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF32F34D4FE
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769516594; cv=none; b=KEUr5GT+P1PAjmwrqOWXqzuRFUzf1OsitshES8rfPvTWDZzLn8/gB24hDWuyW2n9TX+/1FGU5EVN6oQmg6EQ+YJTaIw+x+Dc8QtkkDANJG3pNtXmHaOcB+/Ck2fnaJwC9xJlrqjwCSpGQ8cbSao58pEiIcheA459TcsszthI3BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769516594; c=relaxed/simple;
	bh=O6rDG01uuKhI+p5aawFUM6OGJMTB29WlyXqC3eML6Y0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ahddRUDChiL6ARjIK0oO6KQWfl4XEgaPkPW8tm6ZQt1r3scJ4Q3Krmd0g2xIos0+v/0rzpBydaWw6wihZBbDFxvkKe52cEYJGRb+UWptaAEyCb5skv0s0pO3siQQ80AZSLjIPLvs+b8Ck3zhjqfj6JPwB02oaLEDYXlmsH1ILUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZkHF303U; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Iapn7+m5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RA4PTh171390
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:23:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X+oDnrqs14XAXLjkyy0vgrxBDcXxr0LVxm/6KC6d1bc=; b=ZkHF303UhEKwwtrI
	g7ufgwgU1ZzxxDghaTI2YvIxmT/LSaS2+oOPV3NoBAMySE6ATBTPkdW1YiqdgDcS
	I3Q6SE1LJbtdTxShejon/mfeGxwp1Q6w+fl/2Ap5H14g2fBUvpFBs9bW/aFbStgK
	m3rmGtSdfxQZjpurnKBzGUkKtsI+t3w/0aHreUkV0M+ahvZ6aZ9H7Yp2UStpRwxe
	9HBqfaaj2imXnaW2EIpufoVKaEd0ICT2wyE7L7PLQypCQ6iB3/DkgVaEXq+iAP/D
	FOSAIeDGHZV5pr0+xM68KmsynognwLJwZQZOuBdyfEqy5b/Vy87f3euFl1tyUfKb
	K8r6dg==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxf3a2sa7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:23:12 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-5f5492d5959so15951015137.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 04:23:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769516591; x=1770121391; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X+oDnrqs14XAXLjkyy0vgrxBDcXxr0LVxm/6KC6d1bc=;
        b=Iapn7+m5Lwe0b1vp4moqhfoiuCDRj3KHk8VBZPCGumYkhmE7OB807PCt/EW9UnSJ6/
         0+xMEnIBFdBCJbuTNhOiaHN4bRUxIt0v8hNHqh22jDm69gfbXkLNC4p/Fp+Jto5dCqmr
         9npeLANq8Kg7MNMlHW+EhV1DfYitHTUVqyhkpRveFE7f0Lz1cqxPT6cInlZ4hZn8Cpjs
         a2a6yT3i4yg/I2MqkyFIyPQL74NbrZZbPkC7vcvH8QossJFvQIlO+V+39IsUjFV8RsLK
         aRUXW7hPJ/TJLUEDASDlkxIk0kh1Z/5YKkSciLPb+RV9vYQCLk0YFOlYW3SzdoDeIYJ/
         GOXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769516591; x=1770121391;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=X+oDnrqs14XAXLjkyy0vgrxBDcXxr0LVxm/6KC6d1bc=;
        b=f8N/h127L6kOKmnF0rmJMg+TgZwJEsc2PIjvSVZtr7hRKaMhC2tKAjOdiN4RrX3/En
         vuerZAnVz/3MTBLB4F+ArgUe77KQyjNcfUHkUbeJKnmE4UcuHq17EgAyobNjYteBan2/
         5VZ7JnLjv8s/xP0UBEjG8jkO2kmqujAEOSy+iZvHHr0iU3TyZ1IzfXgAFTjhX34/0B5+
         R+VNkFSA7Xc5K4NFOnU4ZuQ7OIjZm2orxavDbpwwbUALMO+5EAONiVybftlmbeNX8ddX
         0B6mvubf2h/VAe3TKAkJykdj58ZRD4xqAmg8SfiN6eG+SzqFixUoUDdrnXC+g34qlnR3
         jEsA==
X-Forwarded-Encrypted: i=1; AJvYcCXDysOJ4OpctdO5FXaVVkRG67/zqq9ReT5uQvbHSFuBv4TQu6pDS5kt1MOtvT5ZyMKTNLs9w2+WZVIF@vger.kernel.org
X-Gm-Message-State: AOJu0YxFH4awwkV5MSyCvtzrbhrv/oLNsGhbEhpu4XTr2oA87++8/Es4
	ICvY0UKe3Q43oiLe6o6LKFe6/rPuEjarzGnsoCV6zgg1O5vvCj2Gkey7f8F4kyqe3Nq/kVEPxBZ
	9VmjEuqbD2nZ5BNbN4vRTAE5asjckbU1hK3B4Q9Qn8UP7ncUsZvJiUEze6gK6y5BF
X-Gm-Gg: AZuq6aLxVK82vQCQRLZvUn0UG0IxRlxk5DsaZT5YtbJx0prMLod8cxOcvQPc9F450lR
	SsCX8mWj4POuasJFVKJcl47xOccN1HNEG40QwEd3Z4eyy7wvCFOrWYIeO+FGpaFY4Wzy+9t/K70
	SaG05G3W0nulPCHE8q7JqtcZOB13aXLv0XfJGomlSl+PokgoVwMD7qYiVaPEXVxyfahvneDZUxM
	PNuSO2u91MXYFYbgZR7Ebri7RWGx4PjnADi6DfueynfK/pw5CjGQF2IkhYyysl3+iYq600G08l6
	S2ZHwoc1/7mS7dqIyaznpH9UBeLHOmq+Jv9Qjzqk2NypjPmR1Cpj9vQ3e6NOLVXCZVq1EBqOJin
	FYvpbdgGVSiKlN35CHr5eBn+sk3RtWXJFa0n1eBZQueKF4v5+UrOGYh27weGY4QIgJKebCY7g1r
	igZsJlKz22Xn0BA4mIC3K25EQ=
X-Received: by 2002:a05:6102:5492:b0:5db:d60a:6b1a with SMTP id ada2fe7eead31-5f723811ad4mr928513137.30.1769516591048;
        Tue, 27 Jan 2026 04:23:11 -0800 (PST)
X-Received: by 2002:a05:6102:5492:b0:5db:d60a:6b1a with SMTP id ada2fe7eead31-5f723811ad4mr928505137.30.1769516590620;
        Tue, 27 Jan 2026 04:23:10 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59de492cc4asm3375442e87.101.2026.01.27.04.23.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 04:23:09 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 14:23:03 +0200
Subject: [PATCH v3 4/4] media: qcom: venus: flip the venus/iris switch
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260127-venus-iris-flip-switch-v3-4-7f37689f4b39@oss.qualcomm.com>
References: <20260127-venus-iris-flip-switch-v3-0-7f37689f4b39@oss.qualcomm.com>
In-Reply-To: <20260127-venus-iris-flip-switch-v3-0-7f37689f4b39@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4504;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=O6rDG01uuKhI+p5aawFUM6OGJMTB29WlyXqC3eML6Y0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpeK4mv48HyhHRJB1xy9Fj/VwTAdT9q4lho1IqU
 rhXjH45KUaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaXiuJgAKCRCLPIo+Aiko
 1bpZCACbRjwawbbj4eT0N4rNQ6vV37xnqhofZJOQ1e1Ia1pEkDdMQ8HueJq2D8SR/ry2WEAfkX4
 imhemVutFwtlDR5BFNUK3FI8ESM5Xgl9+WKU3Mdohp1+rJr72IMerPenQFPvUiNd1ZX8+9DLbNu
 ujVN1Xz22XelD7HfZmIqN3nZNVUAXFHamKCWURQ/BJKpieCfaz+JkRat3neWgR0csqWSfxu0CRY
 xPYZlZJ7HVjGPSBksPrRCVL8Tb51Tk2HSdgZ/zUlXfSHzVIef5nUTBh8/CIhIb6qpA0TN6X7kR0
 I0csveL2bbEqwIlON7cgPQPJv86hAXNSlzyfZodlXhn0deZX
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEwMSBTYWx0ZWRfX/It5fthNtbGu
 wKXPNKIwbBIGlEkzkhvempXjo/O41tciqcOElxaEjBRSYr4RfqrwkAzpYt+kojVXgsO5fslW+fD
 ePrrRXxFjEefDp0ydmTKOsPVm2dmjRnkyYJCVPiPgV/NDzgzjd7QJJbnvz70unOt8bLXsdmK8O4
 x8DW5qrvc2SGzIFPLVw1cPvOYuttCdSkeMMbyZkqMJJJeG5IrAI89qndBH3EtX8jyku/FNq3FFg
 AQLQ7uJDc5r4GvUJ2N5SqEq6ds/UOr++u6wsAcdImpDuOTQyg6TfnBks/H/c7ogIu6K/MG4GOEv
 /F9XTXmvokT+CvxObqN+xqH512BNP8TiW7cSW3oSYarZq7YMV3nbnXntvApveET0t94RcHF1ExP
 BLdyHncsE+7C/I1uhdQLZAHweJ7McutQPqbLv5CkBvDrlbXmTQrtAOFYtQ/dGUyjrzX9KG2j8I/
 NusuAEGHTR0RUfC6u1Q==
X-Proofpoint-ORIG-GUID: kH-oS95woiURMh0_JjqWyXDO3krhuhfF
X-Proofpoint-GUID: kH-oS95woiURMh0_JjqWyXDO3krhuhfF
X-Authority-Analysis: v=2.4 cv=a6k9NESF c=1 sm=1 tr=0 ts=6978ae30 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ch7mjRkEqDhx0_hr-tEA:9 a=QEXdDO2ut3YA:10
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270101
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259882-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.30:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 10EDE94532
X-Rspamd-Action: no action

With the Iris and Venus driver having more or less feature parity for
"HFI 6xx" platforms and with Iris gaining support for SC7280, flip the
switch. Use Iris by default for SM8250 and SC7280, the platforms which
are supported by both drivers, and use Venus only if Iris is not
compiled at all. Use IS_ENABLED to strip out the code and data
structures which are used by the disabled platforms.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/media/platform/qcom/iris/iris_probe.c |  2 --
 drivers/media/platform/qcom/venus/core.c      |  6 ++++++
 drivers/media/platform/qcom/venus/core.h      | 11 +++++++++++
 3 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/qcom/iris/iris_probe.c b/drivers/media/platform/qcom/iris/iris_probe.c
index ddaacda523ec..7b612ad37e4f 100644
--- a/drivers/media/platform/qcom/iris/iris_probe.c
+++ b/drivers/media/platform/qcom/iris/iris_probe.c
@@ -352,7 +352,6 @@ static const struct of_device_id iris_dt_match[] = {
 		.compatible = "qcom,qcs8300-iris",
 		.data = &qcs8300_data,
 	},
-#if (!IS_ENABLED(CONFIG_VIDEO_QCOM_VENUS))
 	{
 		.compatible = "qcom,sc7280-venus",
 		.data = &sc7280_data,
@@ -361,7 +360,6 @@ static const struct of_device_id iris_dt_match[] = {
 		.compatible = "qcom,sm8250-venus",
 		.data = &sm8250_data,
 	},
-#endif
 	{
 		.compatible = "qcom,sm8550-iris",
 		.data = &sm8550_data,
diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
index 24d2b2fd0340..646dae3407b4 100644
--- a/drivers/media/platform/qcom/venus/core.c
+++ b/drivers/media/platform/qcom/venus/core.c
@@ -949,6 +949,7 @@ static const struct venus_resources sc7180_res = {
 	.enc_nodename = "video-encoder",
 };
 
+#if (!IS_ENABLED(CONFIG_VIDEO_QCOM_IRIS))
 static const struct freq_tbl sm8250_freq_table[] = {
 	{ 0, 444000000 },
 	{ 0, 366000000 },
@@ -1069,6 +1070,7 @@ static const struct venus_resources sc7280_res = {
 	.dec_nodename = "video-decoder",
 	.enc_nodename = "video-encoder",
 };
+#endif
 
 static const struct bw_tbl qcm2290_bw_table_dec[] = {
 	{ 352800, 597000, 0, 746000, 0 }, /* 1080p@30 + 720p@30 */
@@ -1125,11 +1127,15 @@ static const struct of_device_id venus_dt_match[] = {
 	{ .compatible = "qcom,msm8998-venus", .data = &msm8998_res, },
 	{ .compatible = "qcom,qcm2290-venus", .data = &qcm2290_res, },
 	{ .compatible = "qcom,sc7180-venus", .data = &sc7180_res, },
+#if (!IS_ENABLED(CONFIG_VIDEO_QCOM_IRIS))
 	{ .compatible = "qcom,sc7280-venus", .data = &sc7280_res, },
+#endif
 	{ .compatible = "qcom,sdm660-venus", .data = &sdm660_res, },
 	{ .compatible = "qcom,sdm845-venus", .data = &sdm845_res, },
 	{ .compatible = "qcom,sdm845-venus-v2", .data = &sdm845_res_v2, },
+#if (!IS_ENABLED(CONFIG_VIDEO_QCOM_IRIS))
 	{ .compatible = "qcom,sm8250-venus", .data = &sm8250_res, },
+#endif
 	{ }
 };
 MODULE_DEVICE_TABLE(of, venus_dt_match);
diff --git a/drivers/media/platform/qcom/venus/core.h b/drivers/media/platform/qcom/venus/core.h
index 7506f5d0f609..c7acacaa53b8 100644
--- a/drivers/media/platform/qcom/venus/core.h
+++ b/drivers/media/platform/qcom/venus/core.h
@@ -54,8 +54,10 @@ enum vpu_version {
 	VPU_VERSION_AR50,
 	VPU_VERSION_AR50_LITE,
 	VPU_VERSION_IRIS1,
+#if (!IS_ENABLED(CONFIG_VIDEO_QCOM_IRIS))
 	VPU_VERSION_IRIS2,
 	VPU_VERSION_IRIS2_1,
+#endif
 };
 
 struct firmware_version {
@@ -525,13 +527,22 @@ struct venus_inst {
 #define IS_V1(core)	((core)->res->hfi_version == HFI_VERSION_1XX)
 #define IS_V3(core)	((core)->res->hfi_version == HFI_VERSION_3XX)
 #define IS_V4(core)	((core)->res->hfi_version == HFI_VERSION_4XX)
+#if (!IS_ENABLED(CONFIG_VIDEO_QCOM_IRIS))
 #define IS_V6(core)	((core)->res->hfi_version == HFI_VERSION_6XX)
+#else
+#define IS_V6(core)	(0)
+#endif
 
 #define IS_AR50(core)		((core)->res->vpu_version == VPU_VERSION_AR50)
 #define IS_AR50_LITE(core)	((core)->res->vpu_version == VPU_VERSION_AR50_LITE)
 #define IS_IRIS1(core)		((core)->res->vpu_version == VPU_VERSION_IRIS1)
+#if (!IS_ENABLED(CONFIG_VIDEO_QCOM_IRIS))
 #define IS_IRIS2(core)		((core)->res->vpu_version == VPU_VERSION_IRIS2)
 #define IS_IRIS2_1(core)	((core)->res->vpu_version == VPU_VERSION_IRIS2_1)
+#else
+#define IS_IRIS2(core)		(0)
+#define IS_IRIS2_1(core)	(0)
+#endif
 
 static inline bool is_lite(struct venus_core *core)
 {

-- 
2.47.3


