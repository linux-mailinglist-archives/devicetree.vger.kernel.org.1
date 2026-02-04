Return-Path: <devicetree+bounces-262445-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOKXHHKagmkzWwMAu9opvQ
	(envelope-from <devicetree+bounces-262445-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 02:01:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF75E032D
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 02:01:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1D7983069630
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 01:00:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B9DE2749D6;
	Wed,  4 Feb 2026 01:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SFsNTKZ1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XRnSdgyj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8128026E6F2
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 01:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770166810; cv=none; b=dEy1AQ/eDG8f2uagj6UNTEIJ92vEF/2WiP2zVFw2V0Og75WfbMMEE6vkxABydJLdJpqwVRfJQAadPes9qx8XWmusUnf/stJppjvW9uFTgdNPPui+fxAoKH9uUeuSsAv1xIB4U3V2foG5EEPORQliRhM0yVMjMBBO1M2ynJ27418=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770166810; c=relaxed/simple;
	bh=8xvpoZBcwaB5XEQ8fd9wbf7am8qskE/GNdqJO+VC6E4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Vldyag23YI8cLTAs4o28gJjXRvUcs1GVTG9eSUEGvviidXd1Dr3zu2exqQOGL4mls1SgiVVBIm/zj6brvHrjfIQLaMCPNmdEbcA/5xxMJ4aPPyFGWZniDZwwe2+zZMzGDq0apeJj9ZKhlvm0f6q0+EzatAPiHhHMgysEiSPC490=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SFsNTKZ1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XRnSdgyj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613ImPuh3824323
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 01:00:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ce+ofkwDb44AUy52OKXawE+oRbp/+IIXGPOlNxXAeT0=; b=SFsNTKZ1Sg0jUIYm
	ces9VYwnnTdfuJQxsso2STOuEIEG6eLIfZ2XxUtks4PDNrC9YAKhzgzT0alxdLzs
	8yA0kiflHcseX6Rc+NMMQr94Ji7/offHlcdIAM5ZunpXQciJAYpzB966lEx/3rk8
	3JvZLQ5szTZ9o6V7Ny3Uc39Pgp1ZeK0c4JFGjOQH7d4416/CZJ8wW4cxDYhQwPAm
	swh20HujtkT+JQbui6PRq23d3ycPemLbeUgEoJKid8r5NhY61QQ4rbo31+sMp0Fb
	ouXWkhPkxYIri3PMGyXwOR5oaX+CMGEFADjQhNowMBDbvJcOkE/ICgij/nETWCkX
	ezCTsw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3g33jgky-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 01:00:07 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5032e68560dso72196981cf.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 17:00:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770166806; x=1770771606; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ce+ofkwDb44AUy52OKXawE+oRbp/+IIXGPOlNxXAeT0=;
        b=XRnSdgyjvE/WhtLpNkaFgJSmsSI1jEHN/GkBSx5vMcp6Q6f2R7QhfUhInA9vosqbH2
         qEaIfpYnSlCbV4yZLrk2oJkaqWys2z3gduNCw7MbJQQdmuj7wCDnSQBws/jfD5sWV70X
         47b7HdJGHoHttOQZsqMaprIHY+z3zyKjcHuM6JFLEspmPWUbJrWNHP7tBTDQpTUJ0wjc
         IHIV46384IqD8fHcxWQIjkwr/85Zzyi2Vd9/0iaoCvHaPALRPZcsOdHw6T9zhKRygy6s
         xBGyGQhyFL328hd7blEw4kLT3z6SBLwX0WNmwjau3Ja5ivT/2YGBUHveYcdyUhh4h65v
         6LSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770166806; x=1770771606;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ce+ofkwDb44AUy52OKXawE+oRbp/+IIXGPOlNxXAeT0=;
        b=rcEbxBAARUJz5T3wtx3z7ef9aJ12HCzn2lIK1l0BeSBYgYYh4743qDde+o+xgURzmN
         WuMHc/5gjsL7ZyvSAPxN+VkAePuShrDFXQZBp0YqFmstS7k4xzVhRLXVGQ2PFT9aBKJ1
         PiglYczVxcKTxptJGrlYv97NHNsAfRNysYFQ6TKcTKviuR5FbJxwzdQ2riBmuWEnR2Dr
         DxpKPWhFGk43hJNvLy7wvoejz1fJw0GHc/hkbWP7QfzGbn6x6i1yY/ocoVW7BCk1PFTs
         XzGvJjAgNSJmIIx3pWa4esK5/NBxu3ZV/zQ6RpFZS1EmQSQDOG5HHx2TKZ2wwl+Lb/2N
         z9pg==
X-Forwarded-Encrypted: i=1; AJvYcCWX1c93ZDekuhTXAlc71aQcFeQWu8SJogcCQOha6CyfJUA4lE46E4dYOCZGXz5bdJpjrfQgEKprVFXl@vger.kernel.org
X-Gm-Message-State: AOJu0YxbVOzLzopZAGJdg5/k2q333icYSX6cLHn87ukSNEFvtJdEWWub
	xc2j4ArJsR+Po/V9UthyrT891B/aN9vL9VyBtjDU9JfFx935tPhK9qSqT78BPoU929mgEDFU+J2
	AxrHutemgMOODEAIpBOyvW67KRlKoZYdLJ99QQoNAlDg52lia8uk9+KUKdYXVKKUJ
X-Gm-Gg: AZuq6aKellcf6RLX9j7LLEwfHXIiQVMsjVZd3l1B8tRworAcnEbRgMeQoOaLbR1AtAp
	2RxcNFr1e2LnkZirnsM7keXBjllGKYKAz8JnUab7asaUZbVhN59UqK6L7PLfG60DOm6nFswIzd+
	hb3mRQLK7R6CGGOHKwNY84YtfIQF80Wrwx0eAMjpcPfJs7Q4bcRzdMcEHgDL4TYKdk8MG01yj/Y
	8wHgoMJmhuKf86RO6KXFps8GE1E9gxJ3PDoOWfvtjNlYkGRNyjl5bR/fE08Xsp6GeQ1mQjOSXSa
	R7MNdHVYAsj++QcerjtMvZyvEvU5y0ZOPxswuAgdHkBP4y6csfdO8pT1O2eR3fSiOCCEKOADeYO
	vP5WwYS3Q7Pfu9WonVZnzLX3HmdrzszQzML3EJtcAxAl6bctZCHPyzrcD5cymJ5ULLRAuTb6BEB
	kccacIpVY5DYt65sWPAF6gNvg=
X-Received: by 2002:a05:620a:d84:b0:8c7:eb5:8528 with SMTP id af79cd13be357-8ca2f83a844mr199416885a.1.1770166806442;
        Tue, 03 Feb 2026 17:00:06 -0800 (PST)
X-Received: by 2002:a05:620a:d84:b0:8c7:eb5:8528 with SMTP id af79cd13be357-8ca2f83a844mr199411585a.1.1770166805883;
        Tue, 03 Feb 2026 17:00:05 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e386ff563sm253405e87.1.2026.02.03.17.00.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 17:00:03 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 04 Feb 2026 02:59:54 +0200
Subject: [PATCH v3 6/7] arm64: dts: qcom: sm8250: sort out Iris power
 domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260204-iris-venus-fix-sm8250-v3-6-70fa68e57f96@oss.qualcomm.com>
References: <20260204-iris-venus-fix-sm8250-v3-0-70fa68e57f96@oss.qualcomm.com>
In-Reply-To: <20260204-iris-venus-fix-sm8250-v3-0-70fa68e57f96@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Hans Verkuil <hverkuil@kernel.org>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dikshita Agarwal <dikshita@qti.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-media@vger.kernel.org,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2281;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=8xvpoZBcwaB5XEQ8fd9wbf7am8qskE/GNdqJO+VC6E4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpgpoIiliQCHBS41LWbVO46HJ+9YkHzvwGO0Ae+
 y2qqPQY3k2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaYKaCAAKCRCLPIo+Aiko
 1dGIB/9P+DKxN07RhkSeeARLygGwsImpsDAmJNjA2+sl733FQDQbzPnFiHIz4y7qztaU+XY1D0X
 CDkPkOvQTMldVT0TEVjeta63QPY8pyDC9Dx1WXmQXlN84XLGqMlBEU5H69t8q5yisvKD+Y4Q19a
 a9cAyTA8+1S9+u2jnQMDG767zVJ1Em24d7zR+e+N2H3uhEX57nP4rvylviZ39ylCxtWnq77sGd9
 eyWODvJTQuTu+ehnbREiKqBfKCWGGig2lWrlrWAFg2Oq08nGSXioYx6peYAzi3elOgPsr4iN0Ve
 u9UcBJeoACWx9TVvv68mdhAWXgUP+zZ+wWgwHQnf8zG+AE+8
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=afVsXBot c=1 sm=1 tr=0 ts=69829a17 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=tBOqMctlXquWO7Kigf0A:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: GtTmNCtwCmqlHUP-ToVbC_3_Uryhs2uN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDAwNCBTYWx0ZWRfX4mX023iZi/ul
 LscQ/7g9e8cHvrjLQOvjpWx01nTz/e/HRGRyKjE/JAUmPEPQEvM88ZtItYiJHRA8XgAsbvtAJnm
 D/29/t+6mIpjv5aGFsTjJeDUaB0xjPlot86LHOk0sTNsXSKs51raKYOc0qVI4fN5shDS5L3eNVh
 cWvqpi7YFZvFKhpIrYhiRPoCfotm62s0guKUL6XSo0TthgfPczrrfjsEy80/XvdP0GHWdKjHxBS
 hgs2LTv9akXAd+RA4Q/6olB9dTYZ3q0GeuodW+0rnO8vMsqFtLl0GV74FAIwDfqVfzkl6CFIbcI
 EdZkBKVHlVNFQI/Osnl4DLvvSEeONf2iiQpROhdIkm7/wGChuuqgd/mflo0ytpFAFFoVAAEvPSl
 BAuQdararXboh8cR0KcoKRUf1GO1VtLQPfvEeGrblaLT6N7tdYxRmmyYZjbAER2zHZSYvmWVr2W
 sAF9ln70kiKIu+LuTrQ==
X-Proofpoint-GUID: GtTmNCtwCmqlHUP-ToVbC_3_Uryhs2uN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040004
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[29];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262445-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0EF75E032D
X-Rspamd-Action: no action

On SM8250 Iris core requires two power rails to function, MX (for PLLs)
and MMCX (for everything else). The commit fa245b3f06cd ("arm64: dts:
qcom: sm8250: Add venus DT node") added only MX power rail, but,
strangely enough, using MMCX voltage levels.

Add MMCX domain together with the (more correct) MX OPP levels.

Fixes: fa245b3f06cd ("arm64: dts: qcom: sm8250: Add venus DT node")
Reported-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 980d6e894b9d..d8be5c1add1b 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -4321,8 +4321,12 @@ venus: video-codec@aa00000 {
 			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
 			power-domains = <&videocc MVS0C_GDSC>,
 					<&videocc MVS0_GDSC>,
-					<&rpmhpd RPMHPD_MX>;
-			power-domain-names = "venus", "vcodec0", "mx";
+					<&rpmhpd RPMHPD_MX>,
+					<&rpmhpd RPMHPD_MMCX>;
+			power-domain-names = "venus",
+					     "vcodec0",
+					     "mx",
+					     "mmcx";
 			operating-points-v2 = <&venus_opp_table>;
 
 			clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
@@ -4348,22 +4352,26 @@ venus_opp_table: opp-table {
 
 				opp-720000000 {
 					opp-hz = /bits/ 64 <720000000>;
-					required-opps = <&rpmhpd_opp_low_svs>;
+					required-opps = <&rpmhpd_opp_svs>,
+							<&rpmhpd_opp_low_svs>;
 				};
 
 				opp-1014000000 {
 					opp-hz = /bits/ 64 <1014000000>;
-					required-opps = <&rpmhpd_opp_svs>;
+					required-opps = <&rpmhpd_opp_svs>,
+							<&rpmhpd_opp_svs>;
 				};
 
 				opp-1098000000 {
 					opp-hz = /bits/ 64 <1098000000>;
-					required-opps = <&rpmhpd_opp_svs_l1>;
+					required-opps = <&rpmhpd_opp_svs_l1>,
+							<&rpmhpd_opp_svs_l1>;
 				};
 
 				opp-1332000000 {
 					opp-hz = /bits/ 64 <1332000000>;
-					required-opps = <&rpmhpd_opp_nom>;
+					required-opps = <&rpmhpd_opp_svs_l1>,
+							<&rpmhpd_opp_nom>;
 				};
 			};
 		};

-- 
2.47.3


