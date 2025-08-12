Return-Path: <devicetree+bounces-203535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE57B21B73
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 05:12:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 50A331A236E5
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 03:12:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52B482E4275;
	Tue, 12 Aug 2025 03:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RsTrpTfp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ED462E11DE
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 03:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754968315; cv=none; b=DuUF8UBpTLe3RiGtL/3kqS8LXRJH1MVzdNntN7FX3+dvCyq/0Wa36RDwcygSzZuTsEHtA5d7SL7dRCa+QbaZCRVdF0it3oVApTLxwCNb9ZU10TK+uAAcPcWrcSegtGynd7R0ynS0pbsseR/HtCdZRwR2k/nCnr2c8l/CYEPFEN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754968315; c=relaxed/simple;
	bh=iWKr94l4C+wGOu32iC4kUTBBxAFqi2csewiI06tugUg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Raa4fRwN4+9HzC+PbSJNGc9bFoLF5W4V35TLTZpbWhO+YBfG29ZJMV5a2UivCSP6WtWilSxOear8wt56JY6XHXHwJGtVw7F0xlGEXasYKqRaserO2nrrcep+8iU/WZJmRCbHLrKEJh6OiiSjpUDnAg5DkArMq/LR2J1JkcBWEI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RsTrpTfp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57BKQBo5010402
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 03:11:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pBAbKSf3/PgS0PaQMsZaEkwPqrlvCqAgfpJXTwwvKk4=; b=RsTrpTfpSvC3eW2n
	/36qwnsRFpCyLjz9MIi++8n1oLmBxmTHlZt/gIaItVC24+qDu8MmiBOzXVX6+zyR
	C8hY4g8LwT+JVML3gQu+fPG4YYiF2V0WJrBVtbuM93AocV8tRHuVDsrbGL93dskC
	qWom8o295AAHgGc4vyBRg2JMnpQ07XRq+cN/Plgb8nSQagGfVyusnpJXfnIrQU4p
	E5a8r3y6k2WZQT6Eb/cXIcXVGuJLrRTt7PGNDk957BB9bdHtqJS2wvUy5N32jEuF
	rPWo7n6tDp1nS/qV29plKLi1ip8OvYON7/VGKB4Mg6B2/SjXTX6qB2fw1mBnGEPl
	TcTkLQ==
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ffhjjdwk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 03:11:52 +0000 (GMT)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-61b6991a45dso5474377eaf.1
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 20:11:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754968312; x=1755573112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pBAbKSf3/PgS0PaQMsZaEkwPqrlvCqAgfpJXTwwvKk4=;
        b=u84edkzQdFhNB9gQyYo+cli9ey1IQlBw0pEJ1QIRrg7VnxYKm8DybMpdUmmdx/V4Qh
         S/2KUO49iF+BMMt6H5uVi3C6u4gzwU0LeGfOj4cPKTRzLooSU4aby+1ZqoeEPL3j/B9V
         fkQoCc6XAGCAfosOvmuyIXUJNPe4tadHWncuz9fK9mJZifUot7oyFMrZsevvS+zb8KmF
         KR0LoPo1PUNvsUdCabt7tyeoTN+fxknh3ugu7BPOLIeAsydJV+T/2fk7mDf375IrK1d4
         /lzER6AA3FZHiP/qvlpVF+blOs1DGlbIPxqiSvvvLt1Wpn3v9l9K+HYR1d6451yZENT6
         84Fg==
X-Forwarded-Encrypted: i=1; AJvYcCUKDETkXUBIveIZjbQS+sjPs/wuW05YCbBT3ymyQ4pW4ulNk8TpTuyrLEXqgT7nVZLtdVEUjlHpPls5@vger.kernel.org
X-Gm-Message-State: AOJu0YxLg90ueaWjESicGnB43GACQVWavEl+Z8YyoZRhiZ1A8DdNQs3c
	W9Lg81HdUNNMF7zhYsDVCZY4Gv4SEp2OKDvcTZY4lmA1G/lYP33YLBARLBhsMEQdwtADAJHWRJF
	Ur9uWZYQwIjZuhQkrpg3klnv4x2RRPRarof4BDmnoM1ap/pXPFnbuQRIa13HBsz9X
X-Gm-Gg: ASbGnctLJXfmkOe3qSZ03fhpsJY276ufcj4GGQOJqlI3sjWjCyyqqL2TnJU/kkCdnyD
	T9fJcQ1+e9zKN+eq4kJBiA1YHqizwabU6JSJ1jGVnB2bl8XUUochGf7CZYcttPHSYGqH+Rcm0L9
	+GAaEel26jolOndWYcmw9JSm23SavalrEpf8Wr/0PLoorBrnq4RKynrQa1JiYhogPyFU1O9ikJ3
	wysIeHcXfuChhDgtqXEb5Kv+A52UFbNUUA7Ycg8P/84RUIKZbiz4cCgAONZrr4FwHLjhIcI35e6
	EeBI/S4A3qRQ84tIX1894JId/NBAZNJLfPAniEm/CKa5ZkY5wCF1uqbedyUAcBdQbxsAIba6pR2
	q1QXQ0MwmkohQEHE2CQN9VFortpckZ8CmiwpIRSk=
X-Received: by 2002:a05:6870:8e17:b0:301:fec8:fc5 with SMTP id 586e51a60fabf-30c9504838dmr1239434fac.23.1754968311931;
        Mon, 11 Aug 2025 20:11:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEYeL6E0IFSZGXEtKtjBlJEPzBOueX+0t8ndofxKFQcOfrzO6R1WsxDwocxPN25RhkzaZVT+g==
X-Received: by 2002:a05:6870:8e17:b0:301:fec8:fc5 with SMTP id 586e51a60fabf-30c9504838dmr1239417fac.23.1754968311598;
        Mon, 11 Aug 2025 20:11:51 -0700 (PDT)
Received: from [192.168.86.68] (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-307a717f0c9sm8174531fac.13.2025.08.11.20.11.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 20:11:51 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Date: Mon, 11 Aug 2025 22:11:35 -0500
Subject: [PATCH 3/3] arm64: dts: qcom: sc7280: Add MDSS_CORE reset to mdss
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250811-sc7280-mdss-reset-v1-3-83ceff1d48de@oss.qualcomm.com>
References: <20250811-sc7280-mdss-reset-v1-0-83ceff1d48de@oss.qualcomm.com>
In-Reply-To: <20250811-sc7280-mdss-reset-v1-0-83ceff1d48de@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1116;
 i=bjorn.andersson@oss.qualcomm.com; h=from:subject:message-id;
 bh=iWKr94l4C+wGOu32iC4kUTBBxAFqi2csewiI06tugUg=;
 b=owEBgwJ8/ZANAwAIAQsfOT8Nma3FAcsmYgBomrDzaYgQuecT1vAEY3V2vVAU4NXEVxfTC/6Rd
 umxP8mPc2yJAkkEAAEIADMWIQQF3gPMXzXqTwlm1SULHzk/DZmtxQUCaJqw8xUcYW5kZXJzc29u
 QGtlcm5lbC5vcmcACgkQCx85Pw2ZrcUNdQ//Wo+tahejLl4GZM4AoSOTHfuxsT5do+dilLRbHjj
 rdlqhoxNSr6ugRG+IFq3m+xUg/cL17pSIt2PQggpfaBznLV3VgtOZPGLvmsJZ/3KVPPwRL1DR/t
 ckdcgUOkAD25rsyP3bnXRXl3aqXY0CUhlClw8+at9jnhamIcJRI5Mc9wNgNL8uy7zCA91xNNULs
 BkqUL2MSm308aA8f1Wj+zDdYysdI2NejeHe+0UqP491ef0a+vUz2qRDNnDd0a8QXk9HucIKv4R4
 peWyzOYP92ejK3pShm/s6xOi22trMjqeo1s0Xu570z0bRwQ84E65WG1CH5xQ9CHNW/bAtN8GFsb
 ur68QWvSlkA96KJqIjDEFm8t8QxbhsO2qK+NIgnsWXYaU5IhxhjCZp/BS6SYHCO2CmYFlPwthIs
 ZlsKDh6RTr6WTnv+8NRn0AGNxSZeZ/t50RzToI83E4PgXCEolh28d+aUg7KV95VDq3pDM7dCWuS
 SvJ3KeG21pUC7uYkwNaG61r+ESsGdrBd7kJiMeiRLtAIRFKabW8CUabwu2RK5hWZBQjNa6p2m3p
 rsGp53CmSxmGIvsxNWFVA2r9q7mB4qD4g+ckKg2AobCz9aFfHF+B8WK2Q8PSBkO67laYa+TlPTj
 fRepVQHRPrPKQs62ZvsXEfXmAJCGHZzmlGcj9EDTk6zg=
X-Developer-Key: i=bjorn.andersson@oss.qualcomm.com; a=openpgp;
 fpr=05DE03CC5F35EA4F0966D5250B1F393F0D99ADC5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA3NCBTYWx0ZWRfX3aGUVyO6HjtN
 mpizj2FYoUC0aHsYIkaoTlpIvQkyYyEeWhBKSAS9kJC/mXatKIvf5MrTnITiS7te57wm09a9b0c
 0wRDyfHiQxfO7z2zxOiRC1qOOzyvAafDJkPHLd7xRoSBYNnOjoeYD9+U6nNV0L4B8rE32mkkfJ1
 JALdwr2yWLQdIYx6tLbKaxQkb5ZjuNS/kUoO+nbxEuCc6FAQI2lGHgNSdAgTruw0BhtqWl8rDRV
 k6oIV3XI5xqPXGmdLpjGvGbZDYB4pSzvYabU6bCvzRakACHzejoVCqnWJ0QMSKisD8u55SDyqHc
 TMVcKBBi3enIUNyylx/MX6hWK8tF5dNQxye7IkU/Gj26SZQdEtG0nWaj7cQTHfbsmb6egu87GHd
 lD+Ksyyg
X-Proofpoint-GUID: 6lhVDRU5bqlisimLmGtCzNJ0VDeH0lq4
X-Authority-Analysis: v=2.4 cv=TJFFS0la c=1 sm=1 tr=0 ts=689ab0f8 cx=c_pps
 a=wURt19dY5n+H4uQbQt9s7g==:117 a=DaeiM5VmU20ml6RIjrOvYw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=dOedmflVD102KoYFdoYA:9
 a=QEXdDO2ut3YA:10 a=-UhsvdU3ccFDOXFxFb4l:22
X-Proofpoint-ORIG-GUID: 6lhVDRU5bqlisimLmGtCzNJ0VDeH0lq4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_01,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 clxscore=1015 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508110074

Like on other platforms, if the OS does not support recovering the state
left by the bootloader it needs access to MDSS_CORE, so that it can
clear the MDSS configuration.

Until now it seems no version of the bootloaders have done so, but e.g.
the Particle Tachyon ships with a bootloader that does leave the display
in a state that results in a series of iommu faults.

So let's provide the reset, to allow the OS to clear that state.

Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 64a2abd3010018e94eb50c534a509d6b4cf2473b..5eafcb84cd452ecc758922b69774837e9f5a899a 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -4724,6 +4724,8 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 
 			iommus = <&apps_smmu 0x900 0x402>;
 
+			resets = <&dispcc DISP_CC_MDSS_CORE_BCR>;
+
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges;

-- 
2.49.0


