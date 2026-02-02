Return-Path: <devicetree+bounces-261928-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eHonOzT+gGk6DgMAu9opvQ
	(envelope-from <devicetree+bounces-261928-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 20:42:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 954C3D09BC
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 20:42:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 07C1D3008C23
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 19:42:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDB253081DF;
	Mon,  2 Feb 2026 19:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UJ/AeWoM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="O59ncV0A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A46F2D8DB1
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 19:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770061362; cv=none; b=F9cweb1yenFSFE6rUNt9F1d5Ng4IJeh1dz8u30bG7DS2YNZzi73gHqmoARA/tp1dsXawf67yCLF50++PKVlPCtRweaZB8wpcCYAcmDRLeQJZ4WxZYABxFpboWtKctfnL7vlKgzibDPyI2DqUVMDrBCqz1p03pogM8ULuP8/Q0Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770061362; c=relaxed/simple;
	bh=pbqcDT4DWBNXKwAYjsEAVOhoT74XcKGm8/fNB48anDQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=FShIqYd85ef0Ga+kYZX9nHZTRKlzVolhp+s+r05N7Tt0ZtOQs2fLIOMYL2kTmLeSfsb0t1j4LBetKRLwI153JgAUJWFXotYHYRNUBK6tZx2sMDigdzP9zzmEQfdLwuFwe/+y7u5XE2DWymluUwuHN9aMxkvubfrv59DRfRWiLn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UJ/AeWoM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=O59ncV0A; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612BAGfk3082684
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 19:42:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=k9Hxl5ISGhly7uOSDYStfIdgGjkb+Gh4pga
	xnIvI20s=; b=UJ/AeWoMgLVuJdwndr1iNvzD7rSf7eZuf3xNupA9+KCsByKDP+d
	VIewiWXYF7DPCQI8UHIm+1wyf8G5EQfDa5PiPH0f45zVGNGBT2KmOOaIZiVyL3OZ
	M9zmDjPiuAS75OwrpHokrH0zruiXsb9SxRpzV7TEeWf+NOqsf/YWtx9xdGphJRzg
	Agm91WHCzWcUFRFuuvbKQgke21sWn/b/a6yhN9XQCDJRXKKnwAJjOsI9NnzjEwUn
	2ea2xSWNRJNXJsFPzur8V6/pPKWNzlbUBDPsRZlrlfbxxFi5ckFlFt9SMIupASfa
	xQ0TNTNgHlresA5k81gPfQMjuaUac7WD7eQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2ttn1ksv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 19:42:40 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c4464c09826so620594a12.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 11:42:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770061360; x=1770666160; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k9Hxl5ISGhly7uOSDYStfIdgGjkb+Gh4pgaxnIvI20s=;
        b=O59ncV0ASPKT+GrJvJClVZcYMsQUL4gYq+uVpNUjzbvR9UvbobK/X4OiRhrbNNuTT6
         FXHSto5uBR/9dQdPp1ocI1KOEuW8m4SYnpRWRbaxPxXxyILuycVxPU7eFFqLIAZo2PXy
         FJeYlM5zc9hD9IDVhIgopUABcuIJP0FF6ME2pjOTMpMecP1T4hSA/CCzOwTW2zp79C3E
         UqbfTCylieOTdpbsqLb3dZc0iJIIqihW3W91aI5pI5ov6BYPO7v+6kV6rstgBevBTcpB
         k317Yi8aEIKkay7B5ubGw2XtMbg88QK5LS1ns2s9jUG5RCWdO2lzoggjZdGcAkdabvhQ
         4kfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770061360; x=1770666160;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k9Hxl5ISGhly7uOSDYStfIdgGjkb+Gh4pgaxnIvI20s=;
        b=BIq4zC6pQI7dg0icn90KOrNZW0pCtHtXbUS/ogZKuD+Rs0z5SKzM0cRymQT5dWRDpF
         3HYJMAcF5fFAt2pzg1gwiDRHLI9b6Ho5L6l/m+Ybi3NVtCZBblgdgXwowuFG7wKH6962
         ChyyAtLYWnlPoM5iS83wPrptiWmL4ylLVZeVooT/NZYvwzWHXbfvmT7T4+IVY1KMiczI
         F2mlHiBb+ONw41UofXaf1sI1n7JB/71XO5Nv9ww6pmgY5kMLTBGRwRpUPARLg+7NZHqf
         nv892I7hN77fQWL+JZqkvAR2XEMLCIE+r7bclneH7VbYudV+1Ot1m+ggX2RRbwGdniCU
         Zj5g==
X-Forwarded-Encrypted: i=1; AJvYcCW2zbfMY1uX2rBLpdByQyIFsEKlvb8cwcgiPty9wjwdwFUfVCRZLH/QablcdaODxuJoG28gCXLvqqeX@vger.kernel.org
X-Gm-Message-State: AOJu0YyKKASy5fc3gVOJureDa3FugG1ekphQSnnmJvkeCMe+Zwb8ubHf
	J6O735ky35YXlJVI1m+qYNximyiVOEz8IM2IAQf9faXQ/kHqMxcbxV4l/KGSBP7WjULWTiOuG9t
	UipzizLeAP+csmDa+9hls+gWCQ0lluQc8vBlv2CofxCu4Qc4pY/8vECNQ2lkSM/v1
X-Gm-Gg: AZuq6aIpUhcLOrpn4Z6ZYJwrDEwo4zqPNiXyZ6KgFOHphM2U6ilwmOV5yn3FIGrlo7E
	3cvj9P+CBpwuMAyeEFThQy1IX0wY/8K8dYCkdnpLQ58/0HdtNWroFwoDJtYKi30aDkBYodsPcI7
	uam86Egjd1g1Nt4R/R3TxsBOY89vNnhzCSOgPo1PqS2pda4sfWfTdzOdu/favnRhjC0AfVvnhi2
	gd/GZDUBW69nEIxHOrr060LCR0/7B+LFgqdK6jejhrIkHrxo3aQwudfQs/S8yQ8D+IFJfKcgr/g
	w9iYrDskDXxGAvdiVBEwhqAPAD/KPjhEacaqApqqf7t30Sd5Cl6fxi5IN3luaB3p2NsTV3u2Mcd
	y7yOn4MQJIF0fNyivYDHHDyRB/CgNL4ATnwN90LRb
X-Received: by 2002:a05:6a21:32a9:b0:38b:d93f:bbf5 with SMTP id adf61e73a8af0-392dfd8afe8mr8665613637.0.1770061359886;
        Mon, 02 Feb 2026 11:42:39 -0800 (PST)
X-Received: by 2002:a05:6a21:32a9:b0:38b:d93f:bbf5 with SMTP id adf61e73a8af0-392dfd8afe8mr8665593637.0.1770061359403;
        Mon, 02 Feb 2026 11:42:39 -0800 (PST)
Received: from hu-uchheda-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379bfcacesm17401779b3a.32.2026.02.02.11.42.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 11:42:39 -0800 (PST)
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, umang.chheda@oss.qualcomm.com,
        mohd.anwar@oss.qualcomm.com, krishna.chundru@oss.qualcomm.com,
        monish.chunara@oss.qualcomm.com
Subject: [PATCH v2 0/1] Introduce Lemans EVK Peripheral Mezzanine
Date: Tue,  3 Feb 2026 01:12:33 +0530
Message-Id: <20260202194234.3701434-1-umang.chheda@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ANnNY0ku c=1 sm=1 tr=0 ts=6980fe30 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=i9EfSPZJsWMLY0D97e8A:9
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDE1NCBTYWx0ZWRfX0leVQDfMoku8
 JtTjfDjel8dN6Qt3elnycjl5W13ImfOZm2bCHU7elrd+BKHnZhzTVOXuMQbtkeLAIqwOKxipp+A
 LYTLdXWWnlH0YX6IZ5+eEQrcibbpHIcQE5CgNFikgcVvnFcs+F4sRJgGKIxJdBkDKUWpKPwDKb4
 G4irJmA4V4WAnKkJwkdI+MLshaxyXYpmQg5RJEJEpH76h6ePHoIJVkGj6UdjGklNWTAToaIgjCq
 /F1nVcj9JHzHKIXIkZ5y/LOkK3PW/3XeB3pNj16h5409dYyR9u6fkapIU7XoEKHPLWEVAARtdGT
 8Aq2L/dbWYvetLmG/zmJPcqJZ5VcvHyX57YUlDSkohr3xckoP9PgQRUtrLYfh8mRQmaXIe5AsNo
 SjTnC6oQ1HHWo6+hQefK7nQZNvXLULdeQFoDKN6wE5f0AwASJkYPIFLzVP5z8aI7Hql8rG6XxnZ
 IVUFQdYBKSK68BK8Qzg==
X-Proofpoint-GUID: VcDKPFTIGgkJMhDQ5XNK7wzRr1RZ3pEK
X-Proofpoint-ORIG-GUID: VcDKPFTIGgkJMhDQ5XNK7wzRr1RZ3pEK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_05,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0
 spamscore=0 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020154
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261928-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[umang.chheda@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 954C3D09BC
X-Rspamd-Action: no action

Introduce device tree support for the Mezzanine peripheral expansion
card used with the Qualcomm Lemans Evaluation Kit (EVK).

The Lemans Mezzanine is an additional add-on card which can be stacked
on top of Lemans-evk board to extend peripheral capabilities of
Lemans-evk used for industrial applications.

It connects via expansion headers on the lemans-evk and provides
following peripherals :
- 4x Type A USB ports in host mode.
- TC9563 PCIe switch, which has following three downstream ports (DSP) :
   - 1st DSP connects M.2 E-key connector for connecting WLAN endpoints.
   - 2nd DSP connect M.2 B-key connector for connecting cellular modems.
   - 3rd DSP with support for Dual Ethernet ports.
- eMMC.
- Additional 2.5GbE Ethernet PHY connected to native EMAC with support
  for
  MAC Address configuration via NVMEM.
- EEPROM.
- LVDS Display.
- 2*mini DP.

---
Changelog

v2:
 - Move "regulator-always-on" and "regulator-boot-on" nodes at the end -
  Konrad.
 - Drop labels for inner entries of ethernet1_default pinctrl node -
  Konrad.
 - v1-link: [1]

[1] https://lore.kernel.org/all/20260129172850.1175728-1-umang.chheda@oss.qualcomm.com/
---

Umang Chheda (1):
  arm64: dts: qcom: lemans-evk: Add Mezzanine

 arch/arm64/boot/dts/qcom/Makefile             |   4 +
 .../boot/dts/qcom/lemans-evk-mezzanine.dtso   | 301 ++++++++++++++++++
 2 files changed, 305 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/lemans-evk-mezzanine.dtso

--
2.34.1


