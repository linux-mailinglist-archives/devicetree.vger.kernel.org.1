Return-Path: <devicetree+bounces-276488-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qHbUJUT/uGnpmwEAu9opvQ
	(envelope-from <devicetree+bounces-276488-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:14:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3092A4A53
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:14:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E9C3E301F329
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 07:13:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 202623876D8;
	Tue, 17 Mar 2026 07:13:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oI2OUfYX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VK9UIac9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070C53876BD
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773731620; cv=none; b=WR4pQzEsEkJ48Jp3n3TT2WO9WoPB7y0A6pI0C1C7pk5nAl6Nr4Gr6c7+WIxmxY9lcSxHSztgmLc9JNkvoGXz2DvKhRM0aCKVMfwsDSZA8hgy/YWaCnXxYzDwJbvURWmAf7mFSHEceHDXLzsrEY6wFrax2srqb5Ar0FgLV5cjOn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773731620; c=relaxed/simple;
	bh=rykuh589cHF6ffkdhGtne5zbDY7KWI8h8voNN5bHSM0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=uJ+d5Zubgbz90GG0KFfwfKA38rCnZowC7zSDt9WEgOrytlQa4/xsH/Ptof/7g63LsodOP9912nhyeae44x83kIz8UiJQ74P1vqehTFc2J3SkJekHMNc6AEfpX4QMn1uKxqqdrS/DjSgeclnlClEP9Jd2qRbKeAvBJIeHRQL2feQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oI2OUfYX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VK9UIac9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H2qRGl3102502
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:13:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=khvzryLaYdR
	xeg7C76nDQrR5bNiYsv4r+Ubqg8Wo6aE=; b=oI2OUfYXosqiyUGUtDl7ZMOkIfY
	UBIi4kZN4wnqbkL3yzsQ3AY8BMegIaecHjqRYBE/Omf8mTA7JrtnbOUhwHvX3jbt
	08ujl2NnRVWe9gMa5GKJAEH1O1rQ/1Ov8STukkP0by721JU0q6RBhefGYD5Ya4q/
	ftly2Gj++zV9ioiGSh1pktc7Cn5CWQU86uJzJ2ZMpEjBkLTzEOjnLX3JmYsAk8W9
	gguxZqRxlB9M+Rf9+N4nKSiPZD+S/zEZR/wdkNrVWZH6hs63sCVY+hum8oGJKerB
	73OPxEhlHYy4HTaUoAElnjM9MpO/EEbMDNighJySJziax2BpsJ6z7ytPneA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxnb7akup-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:13:38 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-35a032cdd78so26361360a91.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 00:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773731618; x=1774336418; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=khvzryLaYdRxeg7C76nDQrR5bNiYsv4r+Ubqg8Wo6aE=;
        b=VK9UIac9F4YvAwy/trv/tPlaoVMIsUeAEZcFgOk2TuT2pXehHrLtInH/j6dpG0X7CP
         gnmNIRkp1rWrFAQginFv8H5KXbs4/yF/jCoHQgX4CDxc5Xw8VGJRF8440mTxxmaF9A9K
         aZnCaQjaTdYPHRNFPCgqZBemhqpAYh8PNtiolPlo8W0Hqinn+6p3D3usczSRXJCrZA0h
         XYckb6JR+zwfUKO3c6RktiY9lrFVVWCc3ekOi2GDbSHL/INzh8hnfyeCjrMyTEu4Cx6L
         hoj7QcozEf6sZ9+aCUKVqMV3VQJIngvIFwnt4W9r3fONAlu33rLIVMUMLBACldsPJhVM
         mN4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773731618; x=1774336418;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=khvzryLaYdRxeg7C76nDQrR5bNiYsv4r+Ubqg8Wo6aE=;
        b=DugtYUUXuij3hk+77P67J1os+iOwDZLpUuHPxdmz0CjYI38ceQ1r1kUJgLgVdzRm36
         dyHwGLoChOl501aX+kS3Nmpd2JKVhpnO7LLJogHUJAeu1O9CXg7aTGvXg6X1gz6dvYsR
         OLifNQQCbjoQzO/nVpesgAUdrN1PGq61jtyCteaS/DggjSQxzrjQ12ZxorveqATeRJrr
         7ZqbhPiv73sg9/ygSwyQ2PjKIE0dyx9Rjrntj2RY6VP2cyyX4wUy1HZr4ryRHB1EQXDx
         ONKlv0EiXEryh0kpcPurLXPIXmISmGZk9nEMnX+7BmZVyhAHi9W09PRt7Sqh/8J8uot5
         cZzw==
X-Forwarded-Encrypted: i=1; AJvYcCWWGGfmqJOoIIn6ofsCFMnfKFraBnFnjYvF6F4YFA+hXVs2urCrjSZ0K2GYWYC9ZRRIdmF8hE8PG7I6@vger.kernel.org
X-Gm-Message-State: AOJu0YzjjAd+XppE9LfmNuI5ij6EkWb5gNlbhIuZZWgrO5FolpODh8pd
	btPOjfw5n0OiOyk3dXLZAYWOWVHVGtcdstOK/tuGR0nSeAHxyXBo/Irpm+zm0JyamF93BpBjR+k
	KnbHKLXA622rs0YeVFlnFbrtvy5BxddvxYtFEk+Un0M/L1WvAmnHj489f1e5baiJd
X-Gm-Gg: ATEYQzzhjutsyfdRaoblkG0vcDP0A3yUGwpdsbLa2C/v2s3crn6rQHAxQhNAT3J4Kzf
	SA1WhjR029KxWGrjSGSHHzPhZSRUBXb0CE98sNfDcxH4EQ9xxUH4yqR7S8+CJyEOlceN4SoZ+r6
	aCZOUTz4fXECrCiBHjTP4JNFBogJErxD63L7AHN54NQBYFSp2JUPKB9kqfZuRwddvlPXtyXW38V
	N+fHPkwdFY5HvccxvcMkKS4gnsct/+DDkyz5DnricxEzhPHih9pQNfqobgtVEtF4IdQCcghKpcU
	kFRNK7QUCEJqf9z6aEWuXCTZdy7dp+695a4W4M2vKtNgDug/ReM+PvyCMFv9gqBB+6jsW5qjiV3
	lmQDwtexP4WAPeUqe7fSN2CwJRUdaUK1kBd/MAWMNPtBFuUEaHwcvhyAC65ZaMILt
X-Received: by 2002:a17:90b:5306:b0:359:ff8a:ee4f with SMTP id 98e67ed59e1d1-35a21e2fcedmr15130498a91.7.1773731617707;
        Tue, 17 Mar 2026 00:13:37 -0700 (PDT)
X-Received: by 2002:a17:90b:5306:b0:359:ff8a:ee4f with SMTP id 98e67ed59e1d1-35a21e2fcedmr15130486a91.7.1773731617253;
        Tue, 17 Mar 2026 00:13:37 -0700 (PDT)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35b9d6fe68asm2563184a91.6.2026.03.17.00.13.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 00:13:36 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH 1/1] arm64: dts: qcom: purwa-iot-evk: Enable UFS
Date: Tue, 17 Mar 2026 12:43:11 +0530
Message-Id: <20260317071311.1696361-2-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260317071311.1696361-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20260317071311.1696361-1-pradeep.pragallapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA2MSBTYWx0ZWRfX1sMjraN21Tig
 NWJbOCBYzZjsWNB267TovutF7nT37lnABsU1f2ASbenE9AFFc04rlV/U6Ops+P9DZbK5VMMBDa4
 ghdYYoGtLT+TPYUA8SIaDXO64Rmm2WmmRAu25GbL9lKnKrQ80M/8JFKPJ6IX8oeXjBqUKfbK9oC
 s0Le+N2DLcqhoXD7s+qdEkPs2JusmcsTVOCysWQIwJDPX5BZo/fD167es2JKpnX5wxwlNKVnikZ
 t72gLq3fbSC8RmVGR9Lh2aKHw+zL20JJMwQM5YKuKLInODzRCwkgcStqeKM6Gp3tULVQuKZrOCf
 DYHCF9JehcST3afqWMkoN0b87E2X3ebcoe4gsu86z1UglDOLsTQtDhk247a7sRu8dK4+hFcM2GB
 ebQ1mtve99Jt2A5xXqyubMhumN6uKCEFf+EL77HugudweC9JTqpqa5hPI6sS/muntnNqwa4nZIg
 eZlt8WJ6M6jCrViKEwg==
X-Authority-Analysis: v=2.4 cv=D7pK6/Rj c=1 sm=1 tr=0 ts=69b8ff22 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=FwCcbryfLnLJMkbT1zkA:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: VTzaMsFaGLYa9TZKDtUsfH-2__b1jbyr
X-Proofpoint-GUID: VTzaMsFaGLYa9TZKDtUsfH-2__b1jbyr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170061
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276488-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pradeep.pragallapati@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3A3092A4A53
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable UFS for purwa-iot-evk board.

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/purwa-iot-evk.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/purwa-iot-evk.dts b/arch/arm64/boot/dts/qcom/purwa-iot-evk.dts
index fe539b1f4567..e9cf56a415ac 100644
--- a/arch/arm64/boot/dts/qcom/purwa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/purwa-iot-evk.dts
@@ -1497,6 +1497,24 @@ &uart21 {
 	status = "okay";
 };
 
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l3i_0p8>;
+	vdda-pll-supply = <&vreg_l3e_1p2>;
+
+	status = "okay";
+};
+
+&ufs_mem_hc {
+	reset-gpios = <&tlmm 238 GPIO_ACTIVE_LOW>;
+
+	vcc-supply = <&vreg_l17b_2p5>;
+	vcc-max-microamp = <1300000>;
+	vccq-supply = <&vreg_l2i_1p2>;
+	vccq-max-microamp = <1200000>;
+
+	status = "okay";
+};
+
 &usb_1_ss0_dwc3_hs {
 	remote-endpoint = <&pmic_glink_ss0_hs_in>;
 };
-- 
2.34.1


