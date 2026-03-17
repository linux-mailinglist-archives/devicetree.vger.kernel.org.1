Return-Path: <devicetree+bounces-276474-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFLBFQ7vuGnflwEAu9opvQ
	(envelope-from <devicetree+bounces-276474-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 07:05:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5C62A4340
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 07:05:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 88CD3302BBBD
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 06:04:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AFFE3803CB;
	Tue, 17 Mar 2026 06:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FqXQTI34";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ETwqxR+R"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB1C6298CC7
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 06:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773727487; cv=none; b=NtbkfotjJ/zLuNTaZEg9/5SJ7TQ5cv/L4zuLp4CvohmjsJMZiQqlU3lhjwimroH3hJBeG8fIF0/Yei5poxMjMidfz7MEnqCR+4hesYigsTXRH09oJ91rFcWc195Zdq9p8U2YUIbbeupSKW3DfAKJZcpwIvoBb8q2Q2K7FYDiCOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773727487; c=relaxed/simple;
	bh=zDRGjOp+VDJGHw2WaVWG/3dySxzfHzE+gicSq7Tzvjc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=BeFVH1qqc2W8bCORlGWOhdPaJm3GibqXGmVg+YP/tjDUvcJV80US/CMmqtZQ389CXfdBcYmUmiMzGqqXSBGkPP8iyflGe01RE8T2B8LQ3imcRcJBBNtlQVdM7SWWgxH2ODKpUA5HehqZAGvU5P0MFZgAF/wHobffMayyh+CeWJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FqXQTI34; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ETwqxR+R; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H5E6HS1428842
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 06:04:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=qf5Mk9+gd7j1xFB/yZvtqZ
	VV+UqQoleUZ364uomq8Iw=; b=FqXQTI34YUsexqNxeG2vFX+KlK7JdHzfiTIZAY
	qlBin2X5jnK2cQRv/KtS9XmAJQmUBSmw91Sgo7YdxkVs5tmXf3PiZDgAEmF3jeDM
	g/0LiJitlan7IneMZbTHjxoT5rdWeKxombO33LI8vP5qq/1hbmi4orzmtbLit2et
	V8cFik0I4ColZzMOFx0QT6suadvc27qIsrLNq19RTbY4ilvz0LwL2cExQ/VH0RBY
	npLLiLD1QK2QylSQc8jhcoNFufT/2yTk77+miL1jaTBT/5PJCPfFNgUyi9KA9dXU
	5+ekoGXlctZ6kSUPc4lbFuqPbsfl6yPUPlA+/xZeKrn0jKvA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxh99bcyw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 06:04:44 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ab344e3164so29794585ad.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 23:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773727483; x=1774332283; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qf5Mk9+gd7j1xFB/yZvtqZVV+UqQoleUZ364uomq8Iw=;
        b=ETwqxR+RmNyI3pA+cMLGXAftkunN3R9hCZBop/bcG/n4PaRFBRSM++teY+/761GzQj
         vxti6vrBSQM5vKO4xYRI3QAo7dB0gpWG+DYN6AJL/aRt9NSFAbWCw9NzKGNLB9jFYqdo
         ENNXUmNSNi+2Xp12AEdkORK4FzW8ZKMC6/OSQ2RUdwEKGgSOXe4mci/hgQFuEZwjfbsH
         oWhf6FpuKp3QeEDPgLOrnP+KkxAsBmGjK55/8bTJ/gCPug0pWtcTaQdu4uIBMJGSARkX
         8S1no+2zG43yoOcxl0XekDvERWVQ5n7G5YovmHxgtJabUNMQ9eJCs/w6k0JM9JvxQs89
         tPtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773727483; x=1774332283;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qf5Mk9+gd7j1xFB/yZvtqZVV+UqQoleUZ364uomq8Iw=;
        b=WnqLLLJAMQD3YWca8k7Lv7SZ9fFnzTCV/MlVfDKQibuXxVl9ZpmDpGHZcwWPKq3uNL
         QdsR/j0jEek8HNwbqpA2ppP+uaSoAXTsj+5A/UGBYXETe6AHJphB1auVnKQFmPHbvEIl
         EML47XjaAKWEKiCbtOOKqOF+HFcmpP2qLTMDsvIkJ7diBctIdE8wUuQGEbxqMoM5c0Rv
         TVwE9XQ+G7jcl+KXcH3YFgUwvdFafxWcGsBpt/zqAQdclDSVeG8DVUehd7CIck4kjD/0
         sXVbhIjt08kBJhtuDOgnL2XZNypa14Q/YYjf9JkEvJ+qt8bWcNgKPGvG/PFvjGk0kj1h
         PJ5g==
X-Forwarded-Encrypted: i=1; AJvYcCVXpp9VMv0mLvx0SGAIG8BGdxfwsjuwEycDqC0iry4giFHN+IrZbQzLUCH6fGiG9btav3Yx5hoMoLHy@vger.kernel.org
X-Gm-Message-State: AOJu0YyIWYuBEtPDrlIdwq+XX0zmfXLvS4EL8FLLuz87pr9Xxa8zyi3Q
	F0DLMSeHILnhH+MovKWlc3wGxijCMnB6+uDlZZROtbxRjH4i/PvzNSSuAzCySYEqLsaoAMSIWbW
	FAaW8jRKR7TpHtMAA9giTyIDI5Do+XfnzqnwzdNA2Siqgt7ErAUC/DlA+0XDQ/eJR
X-Gm-Gg: ATEYQzyVza34TkKuIYRGFa46CtubQFuB+fYITzsJtXvO9P6hX9s4bBrlM+KX/F9TmoR
	8h5w+uamG3ZBAgN8zFUOeEMbW/j3O4p+WfXbljZawxCYxlhvq9vEYOJw9l4tMUqi67o/E2K8fTt
	ZbAdsWMW8vac0qrhH7EQrJiWmmeunUw2qsYAXRKOu6yDf9fM/Ikows6Gug9lsZPQQnWk88O6iVF
	4xRH2pZkQHmnW1CfUyn5cKD69b5CB6PZSNE6AAkDDGBd1NNC9dWtGAzu42/zWvEivdbsKN60bPe
	sJ31rTmjY+0jtDdcXzVRzH09PmZyRrihvCUZWLyBaAp/VPKoGlOyJtD0KCN3SPEDo+wP5R+6Rhl
	FZ+9VC+7akfMj1WGE4epDM+mEYxcfIdZiYf28GKy1+gzquM2nFysaYN93WZ6ratsnVausr6faJW
	8udK6has2iecHDgu/sQTP/uNF2uu22SkzbyGm8cKGjiA==
X-Received: by 2002:a17:903:94d:b0:2ae:5d79:a163 with SMTP id d9443c01a7336-2aecaac2c0amr104971975ad.5.1773727483401;
        Mon, 16 Mar 2026 23:04:43 -0700 (PDT)
X-Received: by 2002:a17:903:94d:b0:2ae:5d79:a163 with SMTP id d9443c01a7336-2aecaac2c0amr104971805ad.5.1773727482933;
        Mon, 16 Mar 2026 23:04:42 -0700 (PDT)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b05db37a8esm58125785ad.29.2026.03.16.23.04.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 23:04:42 -0700 (PDT)
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Subject: [PATCH 0/2] Enable lt8713sx bridge with displayport for monaco-evk
Date: Tue, 17 Mar 2026 11:33:56 +0530
Message-Id: <20260317-lt8713sx_dt_for_next-v1-0-8195fa931ff1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAM3uuGkC/z2NW2rDMBBFt2L0XQU9Klk2oWQfIZixZtQKYruRF
 GMI2XuVGPpz4dxhzn2wTClSZn3zYInWmOMyV5AfDfM/MH8Tj1iZKaGs0LLl1+JaqfM2YBnCkoa
 ZtsJbHQisdRSoY/X1N1GI21t7vuyc6Hav9rKXbKKc4W3vm+MuF/pfzscUsV4xxZUSXw0X3Hqvw
 BkDEOC05Hy43eHql2k61Ph6rY6Qib+aWPpmtJ1EQUguCLRK0QidcYheK7JCdGg+nVZBssvz+Qd
 wFZY9BgEAAA==
X-Change-ID: 20260317-lt8713sx_dt_for_next-73fea668efe9
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vishnu Saini <vishnu.saini@oss.qualcomm.com>,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773727478; l=927;
 i=vishnu.saini@oss.qualcomm.com; s=20251113; h=from:subject:message-id;
 bh=zDRGjOp+VDJGHw2WaVWG/3dySxzfHzE+gicSq7Tzvjc=;
 b=zMHviYNL9+iqZ6tLEPIyxZYqWqamF1/qkAF7fU0uPZ0qXdzx+3PYneLCphTodch9aZ9MAXq5F
 1pBIhFJYJd5C1IGQTl8i1mFyGmJLRNXoHMS+s3ObUeKt7xoRW2WeQpF
X-Developer-Key: i=vishnu.saini@oss.qualcomm.com; a=ed25519;
 pk=8hlXlF8j/3GeOaDK3w2LYhkv9FanCQru0c7kRH/It7k=
X-Authority-Analysis: v=2.4 cv=RJ++3oi+ c=1 sm=1 tr=0 ts=69b8eefc cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=JQEJCi2ktMuGxaRo7TQA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA1MCBTYWx0ZWRfX2W5hDOkr8ZJw
 OkcXWjkEo6gFAaFLmZWJRmlqW7PXWngvDEwwElhjfIE39xnlCl6l+ppSBR1tPb09Vg2YTa6sXFW
 AFCdRAJVsHIcinW1OeXzfFQCkkP07k/xWohjNNMrxkmpRU2usMAJ5JGGfnd47JNFtcw/Uk6bGN6
 k+mHmn9QVd0c04hK5pPbeXfYSyJPn4+wQKnFLS7S4h6uXQQhpjMIJHXYqVz9OdzcvAt4yW/ZPfz
 sp2v3gSl4Cp/Xcg1vd1oVW2k1tDBtxX3B15Ww56sTPzyLi06rhvDcLJNftEmzLpM4XaRmkQ6FLX
 RRSpax/8czsnFJhwJLFHLGEcD/fTKttnvBiw+hiHdB0cc6vDncTtxoEnUCGJsF+LaouDEQ3LMPm
 S7vZaW6f/4U5vFFHntd+9VYYTx8PZoCtfVrt6lNuxaUFdf92K/7IEHC8OD8QXEZqA29cpTuro/I
 fInsBVaiMEp/QoQ+F2A==
X-Proofpoint-ORIG-GUID: NXGIYruGPSExG2Y5SXcBwcfHpMg8IVz_
X-Proofpoint-GUID: NXGIYruGPSExG2Y5SXcBwcfHpMg8IVz_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 spamscore=0 malwarescore=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 suspectscore=0 adultscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603170050
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-276474-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vishnu.saini@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DE5C62A4340
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series enables lt8713sx bridge and displayport on Qualcomm
monaco-evk platform.

Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
---
Vishnu Saini (2):
      arm64: dts: qcom: monaco: add lt8713sx bridge with displayport
      arm64: defconfig: Enable Lontium LT8713sx driver

 arch/arm64/boot/dts/qcom/monaco-evk.dts | 89 +++++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/monaco.dtsi    |  6 +++
 arch/arm64/configs/defconfig            |  1 +
 3 files changed, 96 insertions(+)
---
base-commit: b691d0ede8f0d622eba958ddc32e6009d54832f1
change-id: 20260317-lt8713sx_dt_for_next-73fea668efe9
prerequisite-message-id: <20260303-lt8713sx-bridge-driver-v5-0-6cc2a855aafa@oss.qualcomm.com>
prerequisite-patch-id: c5155e9804a0e30aba47c54471cf6870482d0738
prerequisite-patch-id: 44e87c690845b24fb4dd88bba67e89fcfd18048a

Best regards,
-- 
Vishnu Saini <vishnu.saini@oss.qualcomm.com>


