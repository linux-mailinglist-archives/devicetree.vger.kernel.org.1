Return-Path: <devicetree+bounces-266135-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMRSCKpnlGlFDgIAu9opvQ
	(envelope-from <devicetree+bounces-266135-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:05:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9731814C564
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:05:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CA5A93098F86
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:01:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8554A35A931;
	Tue, 17 Feb 2026 13:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NliCbb2P";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="U/tuRoK7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3E135770A
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771333254; cv=none; b=DjqaLBeIboOU+kY8ji+2/zCjAIvBj/moEnsD1bGQ4TUGIfHxVGjH/1TNnLqjgNRWc5b5ZmzOUNkWfY6J4jQUqNdzN+F/c9SgTYGFw7QV/JrwuK+bG/j/pLGwLyDdsHlaU+7ttZ8TLlUWiD73T0zefTGU893gguERIl3V5PC1TnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771333254; c=relaxed/simple;
	bh=EzkTHDadVnOE2NfigixNwb2wSzI+jRdeOn659JJ4Y1o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pmRUufo5MlWXcsEmO4ZQXVTV0z4Ki4fh1tEGMPEZtlRqlC6iuwF3vJ54sprgZeEFD2KjCAZmvNQIwxKK5PDlTHn2Sl7VT1AzriEht8MTBXkAq9x/X9qVeDZCnK6cu/cr32b8rr+PSuFbv4P+Dat9q82Wv54TluZpt3ZaZMqtxI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NliCbb2P; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=U/tuRoK7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H6sZDG3393929
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:00:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=bC++DKedS7f
	bs1KMQy0E+YAY3hYXEPrJJ1jNOPM9ySc=; b=NliCbb2PGIvWvO463CFDT60Prb4
	XsygZnUdCazJ3fOw4bRamK85YS3vHWnf8TychkH97NFztijK25sXrke6xglXiLuK
	nKmWSne0v3VhIB9se2iIKvHnwByZsU1J7ivTv5/kVAvaQNYUUhUeHv/rLcIjPIey
	Uc2jXGL89mqeGhjc5vrD8U4aYYb55w08nRLgu9QAqoZBuju53umWIjsxxmP3CCyt
	FJPze3hHVHvuIBqZPvEegUz1tVwWbYuhaCTQMC35x6/2Ly5PTEdenz8lnSE5Z03B
	gq1E6xYHTt30H9SmwPOoiZW84r1gCFT6VNtc7nQE/fNTqlXy5dNZHB9Quow==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc5khaknd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:00:52 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c711251ac5so2374695885a.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:00:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771333252; x=1771938052; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bC++DKedS7fbs1KMQy0E+YAY3hYXEPrJJ1jNOPM9ySc=;
        b=U/tuRoK7QQjNeJHdl3iLpjwORe07JNq1u+j4qfVOqe/Qej2M0puPLGVL1LwwoGhS4L
         mDwyNSWDe4A041VF1lzYkJudj5Isx7DjayshVSGe9iU1957+tkUy2Y6c4OBhRcMi59n/
         3i9Mj+Nj3YJ9ByMwgonLnh4Khp6O0gXrZJh2yxQMKWlce3+L9pnAyQYxo8xQ1f+gOY1e
         vhJvgUV1uUkdfn9hvuoMj46DP6M6ZwNeMB1Vlt/F8ButhQDDjZ3coy7G8HxMdWUrzNa9
         uXHbjIyau+2iSVatA3WSXoXnbrMTSvacEj39rJtcKc/pS9Gxgbka1gVPIlKwvbJ8utPK
         khkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771333252; x=1771938052;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bC++DKedS7fbs1KMQy0E+YAY3hYXEPrJJ1jNOPM9ySc=;
        b=WCuvjHuBemIGszpF2J08M4Ce4CLGLEzZPW2r8WQwjxF4m9CuiTKSMrABTyMol+w5FT
         MrocU5JfYe0phse+xUGMb4YcDtHGcPcXn7Cn296fY57UVOEx4O93JJ3hS68RhzimM1TA
         zzcVPtvKzz9TQB/Z7WeSVc71+c2JSB+23AtddYRHesE5QlqsSjY1xXS7foAmirA53ZSB
         pSMS7UJXyu5jihzVH59VIeN0+lfZg+m+E6mZaSgwK3gUQs/67CJwp7iqsnr/jCptFenD
         7ZE20TdgwkJVl5H0M+2n4B97Ne4izVIzUiQFncnnowMdrLjmS6cFqU4dlzeIN1p+PH3P
         kUiA==
X-Forwarded-Encrypted: i=1; AJvYcCXxdDtLMaOZ94SNn9g6jT4/lxCHDfJwaubg1BAaOpfC9348qjzbvmF2w74UsPtXLc8fGkw7dH2jd+YP@vger.kernel.org
X-Gm-Message-State: AOJu0YxwNHEBH8wytvJeHuJwnwj4ej4oQe4sNxbu8P5sairxazinxPYj
	XzYF+DksJPS9m/P0Ve9Yh7MDPVmfezoudYoJDp2myBShPPniKSEALebC6Tgyp5Y81zqnyxitLzx
	rxlu6Enilm2Gpw2hXtVNYVnbG9CYctll3lZiVxJ7MYW5rEcHuaZYk0DwkLhJqAvMf
X-Gm-Gg: AZuq6aJikHMqMPH0dN6hIYz/5LVzi+nnpe6C1j3oLcrmLS414rsyXSpymMOvq2t4jaF
	pArktk5emd7C43b7s76BpMfQ0ACGvI65CaFedTLcy3h1Bui4eopPWP3ziHdOU4WTRVNODjWfeUW
	3zuxtuMamh/simULVi5UqHNkO12h2NHNXY+gaDgttEafQIUXGD8JInS8ncn9mtcY5F2Rj4/Qzmt
	ioCKdcikQJsCQd0zucemBjlvcp6Cym9rJI453A747HF9G5cq3Y7ITQlzhwr5fmdZdPcoxaexZYP
	yaJMvlO0vdggODdQtz2fpRKejqRcPul67CsnBKjf9F72UqsTjNBhnBcx4PRTauXUbYmFLjccveZ
	iAhZ3BXZUD1qyLLx5VlmHFo8KWhEVB//swUkehQ==
X-Received: by 2002:a05:620a:3947:b0:8c7:106c:cbd4 with SMTP id af79cd13be357-8cb4081fabdmr1564979085a.12.1771333248266;
        Tue, 17 Feb 2026 05:00:48 -0800 (PST)
X-Received: by 2002:a05:620a:3947:b0:8c7:106c:cbd4 with SMTP id af79cd13be357-8cb4081fabdmr1564921785a.12.1771333243774;
        Tue, 17 Feb 2026 05:00:43 -0800 (PST)
Received: from quoll ([178.197.223.140])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48371a44ae0sm100240045e9.29.2026.02.17.05.00.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 05:00:43 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v2 2/2] interconnect: qcom: De-acronymize SoC names
Date: Tue, 17 Feb 2026 14:00:37 +0100
Message-ID: <20260217130035.281752-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260217130035.281752-3-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260217130035.281752-3-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1624; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=EzkTHDadVnOE2NfigixNwb2wSzI+jRdeOn659JJ4Y1o=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBplGZ0wIofTUnkIovkhI60z3g9Ux8dN60mwyDXz
 RsJr3BYwcSJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaZRmdAAKCRDBN2bmhouD
 18NpD/oCJxlG/+6xPVXgrNjQ8dEkszRg0xg60tsRI0zvjl5stBh9s6/OmZRvsrauRh1l0nSONj+
 Fujm5eTRGZIUYyQzrT+NLj54lMWJBpx4mhsD8F1xOmhhoFgCSX/v03AkJ7hGPzPT/4wdYhZUBEt
 EQDF5Y3IUfOTo98NJpN8QI3vFUtCeva4g99+VIZGprgCz5/0o+F9aw43Y6if5USfHCbwE/1UOM4
 LChDggWzTRxyy7MILzPZPxX92acVZlWd9shLeqROOjB5Jto+NH53f7u6s3hcwxq/TwFi/kpsuRl
 BsE1o3knO0EOLdbgF5zXvEKZdSI8mBK1ggQy18lgGBKcaiVItbE4awDRsOrrUR4eegvW9Pd/UF1
 dGb4YL498sdQFF+YBI6zHdpMpqxdpa3T1rrnJJyWlEuGIkNoJvLr7GoGsm7/OewJRRThdbnGasZ
 S2U3kvjy24ZLEm53ze89WDS8bIoWCQket9JQ+yD8NuDtMy/EN2z34qz2xM8avRXbzlKeBRTggx1
 +UEMDWvnpr0ogPUeargkQ17GeErSjXuRFr1XZkFfxs9d52S8Yb8qVq3td71hhAnYMvPrx1Ziofm
 AbpMyRLoOiQNyPG1LiBanjnC57ygo7aair7OMC9WB3Rs9b0nVLCfxqfhRV/5K3gEr0EgkUdCXDH RCK0vrfzeXCn/cQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Coyys34D c=1 sm=1 tr=0 ts=69946684 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=6nO30s3o7FuWeffXwhKHTA==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=h0AwHwagC81chbRYmVIA:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: Lh4aIlmHQYMeu7DCpRDYYB6tVCVP5JZl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDEwNiBTYWx0ZWRfXwtcAntUX0e8I
 eJW7CJqqNb1jpZtn2bL+sW30LGGcE6aKLg3EQ3yUMkyRKwjgmIInQCJOxyORvK9l8+Idv6/23rh
 JuSkdVEAKOY1EX8g0Ygp47i4UkisvQOd7lj5+31nH5a5SDI8N8diIShvn9fFbBk65x+Ftbu4S8E
 1DNC3ha1Bg60S4PdwCSEfrYxAPH/eEV+6iabYKaxHl33rrEy8ir80lr3qyeE7lT/V4deSEz61rT
 ZtnxmYfEpmYm4Tl/Dan7BU8jT1f9Rm/fyEUZHelzA1LT8EKUSyWD8yFgu5w765S0AVcZiWg0aod
 Un33wQPX57GQZHwPUD9K70DLvOJvVaxfkfr3JNHE3qWIkTKFE7TxElcdJhqQ1SIDfcwphu++3Y5
 QFES/KpF8dajNuUpbZJol5QENBMINoqNDe3FsY/H1TKkCvLSQTXYn7+2xBLo/CNGg/ITnl+Axo6
 IkxfldRhFRr2Mwh8sCA==
X-Proofpoint-ORIG-GUID: Lh4aIlmHQYMeu7DCpRDYYB6tVCVP5JZl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 impostorscore=0
 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170106
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266135-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9731814C564
X-Rspamd-Action: no action

Glymur and Kaanapali are codenames of Qualcomm SoCs, not acronyms.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/interconnect/qcom/Kconfig  | 4 ++--
 drivers/interconnect/qcom/glymur.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/interconnect/qcom/Kconfig b/drivers/interconnect/qcom/Kconfig
index bb1cb8a640c1..425686f4ec50 100644
--- a/drivers/interconnect/qcom/Kconfig
+++ b/drivers/interconnect/qcom/Kconfig
@@ -9,7 +9,7 @@ config INTERCONNECT_QCOM_BCM_VOTER
 	tristate
 
 config INTERCONNECT_QCOM_GLYMUR
-       tristate "Qualcomm GLYMUR interconnect driver"
+       tristate "Qualcomm Glymur interconnect driver"
        depends on INTERCONNECT_QCOM_RPMH_POSSIBLE
        select INTERCONNECT_QCOM_RPMH
        select INTERCONNECT_QCOM_BCM_VOTER
@@ -18,7 +18,7 @@ config INTERCONNECT_QCOM_GLYMUR
          platforms.
 
 config INTERCONNECT_QCOM_KAANAPALI
-	tristate "Qualcomm KAANAPALI interconnect driver"
+	tristate "Qualcomm Kaanapali interconnect driver"
 	depends on INTERCONNECT_QCOM_RPMH_POSSIBLE
 	select INTERCONNECT_QCOM_RPMH
 	select INTERCONNECT_QCOM_BCM_VOTER
diff --git a/drivers/interconnect/qcom/glymur.c b/drivers/interconnect/qcom/glymur.c
index e5c07795a6c6..4fa8be6375e7 100644
--- a/drivers/interconnect/qcom/glymur.c
+++ b/drivers/interconnect/qcom/glymur.c
@@ -2518,5 +2518,5 @@ static void __exit qnoc_driver_exit(void)
 }
 module_exit(qnoc_driver_exit);
 
-MODULE_DESCRIPTION("GLYMUR NoC driver");
+MODULE_DESCRIPTION("Glymur NoC driver");
 MODULE_LICENSE("GPL");
-- 
2.51.0


