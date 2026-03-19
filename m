Return-Path: <devicetree+bounces-277657-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cOteIhzBu2n1ngIAu9opvQ
	(envelope-from <devicetree+bounces-277657-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:25:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDC02C899A
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:25:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 723E2300B9C8
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:25:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D09E3BBA10;
	Thu, 19 Mar 2026 09:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LGwcjYPz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aKY0SNee"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1D7B3BADAB
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 09:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773912266; cv=none; b=mO8sbY6EmwSgJyGz31OBnaa/IsJBFWEmUdij3/JeOpLmw6V/N+UUeqilyssESRXDQcPOqZAHA1bIgcnc8Pd2OPBF11lGkfGLAz4c97X5pSCN0TkUYDMeSzCmhsVLiH+v8pj1tjAJeWPSj3fl3YTH/VvPsiKf7I9VokSPR2ltf00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773912266; c=relaxed/simple;
	bh=gfxLWwfF2AKQXalU+rumQ0ieO0pXnHY/iN5+ExVE2gI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BmoT1agu82fqMrZV1gzjxLfHqnhTY1r0sRcUwMfw+iNSv/mBWSNJxPWg3z9oCAcmT/F+NR/VWuuyYeYk5hs0ebMcz1ssi85qf+ghlGqcOeNv0R4VBMtS00+yfSurmyge4YnmjLUvoaMvdu8Yo9IgWkbTTkbYqKDLGv81c9o73bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LGwcjYPz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aKY0SNee; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J74l0H2884858
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 09:24:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qYRdTdLgVsmr83zB2UHBMMXbgW5Q/MM7kZAYJiw4tzE=; b=LGwcjYPzGYdExa05
	os/yi4ARGz7AYyMXHKIXA7CmAPO5cCf9LDqBa8ApMx8JSdsz/LbGIxPAu25sjwFS
	yiRYENtCcewS+9SIZCjtbQWpZcaRtOsd9wzlNQn1KgLNgNKhoN1s7d6Riggw5Cph
	o0qF37MvevbriycObxEVfyw5hGYr1ZpnS7HbsR9tO6nbvj9JmlrOjpGZk99CIVuW
	mO4F7NZcQmWO8IR8yUc5/9gCjdeFSDge1M1B/ayAnFUTJS6NgA0AdHNeFQXz6JWo
	lXoYT/8MOsTEAHCUlmum9FvrkPeMEUE01rSVL9oYlqnjHZrJ+eIkXuIeRjVTbe92
	ihisww==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cytxyuwm2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 09:24:25 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2b069bfa817so11786355ad.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 02:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773912265; x=1774517065; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qYRdTdLgVsmr83zB2UHBMMXbgW5Q/MM7kZAYJiw4tzE=;
        b=aKY0SNeeC/kV/MuoVz0TjpCjXFhAdQXfmaBXCyP4B1LC3+b2E3m5DNTcyAdx+AwYar
         BU1GNejjqZjcwdUq5kkW6F7hht2vnoTnj/+A6G6rimremD5wZNN/DufKYjHX7tJIbx1g
         WzACIsN872IbEM9OZ2lXiiMcOL42cYvEwloIw8fpIXTRkhNchcFMkGl8YW3hP9aKL9e8
         eaMxdgYgx0L7eXVE97U4+JUSm2FGijAzcXC9VcKuc0hRPwZ8sZ3ZQFgC20kZRBtRHF5n
         9CW7rE7GnzUJV/fa4BYKPe79/7ZOmjxZ1c/1hPSMIYfGKYD+9r0kFsyaD//DNmGezpXk
         tMrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773912265; x=1774517065;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qYRdTdLgVsmr83zB2UHBMMXbgW5Q/MM7kZAYJiw4tzE=;
        b=LQ3dN2G2Y7w0XhH/dngVxGv7Pqsmq91gXPriscnxP7aLgFtnyYOD+H5vmphnfAOG+3
         EL7dZY3ZRIFz+3GL10THai3bFQojXnRU0cvB1YxbPFroyTNVZO1jO+X7hiXjF1TqKQ0w
         bJioctRQAZzNmDM6UpXG/ckDHqVjC/Upg0R6TMUlIHF943kuBgA305fFMMwGmXLB0zP7
         r5hEOcwj25soXJN92Vl9DPARJhBtIJKROxW6irZfMrAFYpirh/Q+NQHS3A221TWm32IW
         5DUzHjzopeoPc3U+6Ofd2Seb2Dk5SstkntqnCaUB3QfrgpdN7Il9Yj0vk/TOXz6ZDrfp
         Dzsg==
X-Forwarded-Encrypted: i=1; AJvYcCVDf+tcSIeHji7yR5mvESjjFYLOWZ90jmvIQJO7znUhnpr+H2V/vbj3pa9wAKN+jqkTDC/9kouobrCN@vger.kernel.org
X-Gm-Message-State: AOJu0YxFdvvwvjz85d8FMTlUnneANwu28rjYVKq+7pJ6t3CLDRupGJzP
	s6TH41FJphFj4iyDE4amfNnclK9MCtZnQtk/QaraVfbnjIpk9/HJcucgXvwzlaHaIl3pB3dmDeT
	6oRg2ZSJ1M1N7/WPWiTz9lnPcQ+L2PJNL0XA+iYVjGimpequ8V6dAOywWD0tD4sAB
X-Gm-Gg: ATEYQzxiUwCCZpzx2fNM5luu69Yv3UKAbpokM71BSt4Ja7fCgwoVoeKH6+ZEQxKx5bJ
	FO+UMAEUj2kTfqGYmWaMqlCiaS63W33du6uQ7et4zB5aWsTZdvcHsEBJIKt8AsKwILOFJka0knf
	lFN+096OlDofVuMMWx+8futT8B0rByhQghsvaglFQjxOW3CnQA96loF3u2rstU0V8XRrhPWsbun
	+qP5YojEKIRNddwh3Z1HC909VpDck/5QsOtbvxca0nlVKwlntEypQ2N5SKMu0DSDvprFtIvTZT0
	faRof+7gYDoyuYDeihIZ4sJ2WnyWU4emquHWu61nBZCM/3bF03ARg1uGIrOdTpLNXaVCkNJ9iha
	UD9+XngXwWNN6Ey57vRT/IRSnzaVkOe1ekop6UarPsmVE4mVgGLyERkj5+4c4a1oKyp1mZviyul
	fEtp0C5R2KHNaRXkUuiX2N
X-Received: by 2002:a17:902:cf11:b0:2b0:6e8f:8e73 with SMTP id d9443c01a7336-2b06e8f918fmr57167005ad.44.1773912264535;
        Thu, 19 Mar 2026 02:24:24 -0700 (PDT)
X-Received: by 2002:a17:902:cf11:b0:2b0:6e8f:8e73 with SMTP id d9443c01a7336-2b06e8f918fmr57166715ad.44.1773912264060;
        Thu, 19 Mar 2026 02:24:24 -0700 (PDT)
Received: from WANGAOW-LAB01.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b0704ccc67sm48391035ad.15.2026.03.19.02.24.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 02:24:23 -0700 (PDT)
From: Wangao Wang <wangao.wang@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 17:23:57 +0800
Subject: [PATCH v3 5/5] arm64: dts: qcom: purwa-iot-som: enable video
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-enable_iris_on_purwa-v3-5-bf8f3e9a8c9c@oss.qualcomm.com>
References: <20260319-enable_iris_on_purwa-v3-0-bf8f3e9a8c9c@oss.qualcomm.com>
In-Reply-To: <20260319-enable_iris_on_purwa-v3-0-bf8f3e9a8c9c@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wangao Wang <wangao.wang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773912238; l=797;
 i=wangao.wang@oss.qualcomm.com; s=20251021; h=from:subject:message-id;
 bh=gfxLWwfF2AKQXalU+rumQ0ieO0pXnHY/iN5+ExVE2gI=;
 b=sEuyW/0qqAXh5V31A5N2qELgEK3rgyEUpmvQZkub5l42MXqpM8aIh7ubyIuEYXtYxkSaotBDL
 H/8F6SAdqXPBT0+2wASsAMAtN55Nsx6/q+dG+svxtMwaRb8kxeQHS8s
X-Developer-Key: i=wangao.wang@oss.qualcomm.com; a=ed25519;
 pk=bUPgYblBUAsoPyGfssbNR7ZXUSGF8v1VF4FJzSO6/aA=
X-Proofpoint-GUID: RpaJfKqMWHc17jFXfmmlLhTlhR-VMDoa
X-Authority-Analysis: v=2.4 cv=FKAWBuos c=1 sm=1 tr=0 ts=69bbc0c9 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=lIq5CcVmxYL3PNKvYLcA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDA3NCBTYWx0ZWRfX4V1HnIi2iubc
 VIKP1YeKlBH6yPCgqUfTSiFE79HV7UyEWnrV6oagI8ldYn0H/ioypgPMA2qJH7h20hMc6r0VSZN
 y6jN1X4+VjCDZ8jL6uPfNIrJfYgANNk5ELl8nqCBiRJ60+PfN4fvehHD//EI1SDZxG16TLd+QLI
 bKh54vDCsL20luz44gmn4AfsOppD1j3IfxRZK2R+758oBapPmC7ktCC/R5+z+cIK1zDOBoSy/6x
 DoY6VhYgCTh/c/4nBL9HHmVC1HM6oql4YTNuIJbGo+lVqwSc+Y873bigUFKezg3tLKj6iort6ix
 +Ufq0dFItJ8kgggLU3CH3Pa6VRaRC+Mnf4MSVdEONqraAS5tenT6ThMMbTSgHVye1VHhNcXAv1i
 ogs9gI1YduWX/jDP8SGmAg9M59TRc52D0SjrQjxn8qB/O1j5Wm63Se41RNtihJn4vEbtlBQTOd8
 bP/e4KZQkapqH+tQTXA==
X-Proofpoint-ORIG-GUID: RpaJfKqMWHc17jFXfmmlLhTlhR-VMDoa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 adultscore=0 bulkscore=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190074
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-277657-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wangao.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2FDC02C899A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable video nodes on the purwa-iot-som board.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Wangao Wang <wangao.wang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
index fb90beb1096f665dab834737b6f4115f56c72977..549fbfa3273270d287bb447b45a7d2f58fa15a47 100644
--- a/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
+++ b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
@@ -389,6 +389,10 @@ &gpu_zap_shader {
 	firmware-name = "qcom/x1p42100/gen71500_zap.mbn";
 };
 
+&iris {
+	status = "okay";
+};
+
 &pcie3 {
 	pinctrl-0 = <&pcie3_default>;
 	pinctrl-names = "default";

-- 
2.43.0


