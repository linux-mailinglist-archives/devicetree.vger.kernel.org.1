Return-Path: <devicetree+bounces-266649-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 5qS7HOMOl2n7uAIAu9opvQ
	(envelope-from <devicetree+bounces-266649-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 14:23:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3F715F007
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 14:23:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AC5D8300D601
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 13:23:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E523530E0CB;
	Thu, 19 Feb 2026 13:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H45CFTR6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="INsFLq8U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85F691E9919
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771507424; cv=none; b=cq3fzGWjDOO/uiLTrOy83ZKg2AQNiUpJwzuiPKWiq0Se3tasM+TF829ixUy6owjsvLV2+eZouQR2JILmGQ5nbr9ROIrv5qZQ2qCeicSSzZC8SjBW+MAKKVofTV/q86WcbUQUG5R71Lpe4Z3Sq2WospQ15rynbN8bVhr9hoNDkho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771507424; c=relaxed/simple;
	bh=0gyjuFoxs7NtVb0Ux4YIdLj9khKcKnmKap0ACu0pob8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=fy9BFuXlnqHvOAeCYSWghdeesSVQAROzZOIrwynAULuzv3vC9D2SYuqd93Ax36GpGuKiEpb1S7ep4DLlCnYQSaKEZJhP7AFTRmLtUgtQH5f0MjWvDyGPgpQ+x0lUj+v8fxyvOv/IO1BgHjIfDHkqgS5+LuMdzln9VLhYiOd/nFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H45CFTR6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=INsFLq8U; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61JBe4WO1924861
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:23:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=cxHwAGmeM5r2WXEBNfR4UA
	F7qyvQhKDlv9MAxE7EPWs=; b=H45CFTR6H2e37N+OIKop4N6d8vwnoJpjp8AV6M
	NfirUwkg8PH6u8gLRAFb5+Py21Q27z9KviLkqpShMXn2N+IQisQQCPBAknA6ukB3
	KuNC0DXbXjXl5ZittItrieGBGQd8hrK7XbBg1O4YZPT0C959QFtO2EPCDHWiRD2N
	eixKyBZ1xBqH9Z4A+ZEi0atHvHZhX905HJXlBxRpM9hdUjR45oNlarFRCYWkL83S
	GxDYuK+j97ZIu/hUyI7Sreinbkpsjz+hnYCsMpE130Priyin+ONFJepx5Dy6nmG6
	cvQL/Nr3+4YrdWJ2sq6wc/bbKTwegvY0AKF9hXo5/GsvnDcg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdqdg9rnd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:23:42 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2aaeafeadbcso10531145ad.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 05:23:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771507422; x=1772112222; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cxHwAGmeM5r2WXEBNfR4UAF7qyvQhKDlv9MAxE7EPWs=;
        b=INsFLq8UpV0gfO6r38CoGtAouIjLE03piEN0UDYNWu9deSb3Arj1w/mkAwUqIj7tUM
         R7IwFyF4jpquCHDqRh17P11FK1LK3EWk67wAZ2uK+NnfY/hNl60WmBRrGjz1h67pa7GO
         S8BSsDqUkzRHxUzp4Py9tnA2qmUpB5fvT1Xuuz53IBOu1yDImy6xMkQLKWEM8zUvXOyd
         O+CA+qjx4X04dL/mIZemcsYlGEbZqF0XdTm+eA+RQux+P8op15dUImVjCUBmkfXPRUzv
         QFVEuvmkPRUWPoSzOH9kf7d0t55gelA7TuZChCmQaI0xGGaGUFYE8EURQopqIc/ln6LX
         GMhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771507422; x=1772112222;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cxHwAGmeM5r2WXEBNfR4UAF7qyvQhKDlv9MAxE7EPWs=;
        b=CoD3GfAp8xq279dMyaLu907B0rAkcfp51JafAeU8i3mKUitLaXYmRMZe6FPRBK9jFO
         29R2FlEs1Ruk8MuxUQ6Oi8mnckjShWtvbO7peZ0tQ6EW15zWY7uq222ZznNhNWuH2w12
         /A/d03v8qz9QlE07xhP4Z4+NXFnHzl3N5OIGbsiefqkAirU1qUJNha4QlSTHALNHT+O/
         qObQoNFK6UlVs8WHSeE8cRpre0rG2do2SPHnuSS2dyFcC+DBODa6WN5Duecx3Ake75cK
         CfOP0P9PdNGKp8reZ5TmzpguFT3lAL4zwiSRL/OR3JXbEHdoG4OTLOQeT7dODNxgG2g0
         3NlA==
X-Forwarded-Encrypted: i=1; AJvYcCXxBAHuXcFk6gPkB18TwrR/C4QwVpUpAc8d/ZhjD6w0vzkoKH5f1xA5fr0pTm/eyHG+t7iFjoyAYbpV@vger.kernel.org
X-Gm-Message-State: AOJu0Yxe+2otTtMepfDLTOcVdMRhNbsynQWsLWJrqe1VITRY/IlA1TXV
	QLaj4J49HoXx7/35/I9+vaUZLMU3qCN7LEiCRhm71xRMXkgm6GdAnGrwC4BV1PUhQlPalpm41Cl
	nnoKdzox4/aQnQMndIEoPOWOHyOGgyGdDG0pxt0ElsC8cUgIMKjTsr1naD6dWotvk
X-Gm-Gg: AZuq6aItPc5jSR6kQ11iVaIqB6wKzbpAh/IiYVygIY5AeLCpxJjHc5i8A+6BVxbVZYb
	fRs5YGUeI5Ut71AGjiww4qXYm8Lh8EGJVLtmJCmv/HjpL36w9oIayJfrdL1XeSRJ0eS649DCY8B
	sCDFkaQ+UI9605r1V1EnU+WUS1umXgNOMEGMg57MRJ+boKefYmC4JDwVmXNjhc0V5LhF39IfkIR
	cq80fLxKNvJyBJojGm6Rf9Z9L2nCw+0sgseVSTgXdThlG6deWOgc1uTU8G+gD5ndwcuuynYSGKT
	dtP4aflJaSib+oxl+VpXv9oUdFMJhkcYIG9y1k10HfGRQmXUfaJU/B1gE6YBZin5yNXpg250ovS
	N0EphjwdKLO2gEflfjYN4xccNKOBNquXmqGDliqFX44IWXP378NiEyRiLn1TbQwpp17xaIMs3oF
	g1CwAxwIFJLCkPsjyObw1eSoAWuFzyRAVp9ICxIERzJA==
X-Received: by 2002:a05:6a20:7f9b:b0:392:e5eb:f0b with SMTP id adf61e73a8af0-3946c96ddd0mr22636111637.64.1771507421839;
        Thu, 19 Feb 2026 05:23:41 -0800 (PST)
X-Received: by 2002:a05:6a20:7f9b:b0:392:e5eb:f0b with SMTP id adf61e73a8af0-3946c96ddd0mr22636089637.64.1771507421257;
        Thu, 19 Feb 2026 05:23:41 -0800 (PST)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6e52fd0ecasm18489620a12.7.2026.02.19.05.23.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 05:23:40 -0800 (PST)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Subject: [PATCH v8 0/4] arm64: dts: qcom: Introduce Glymur SoC dtsi and
 Glymur CRD dts
Date: Thu, 19 Feb 2026 18:53:25 +0530
Message-Id: <20260219-upstream_v3_glymur_introduction-v8-0-8ce4e489ebb6@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAM0Ol2kC/5XOTW6DMBAF4Ksgr0s0/jdZ9R5VhYwZEksBEhtQo
 4i71xBV7aKIdmNprJnvvQeJGDxGcsweJODko++7NJiXjLiz7U6Y+zrNhAGTFEDn4zUOAW1bTrw
 8Xe7tGErfDaGvRzek21xaCrKSQhS8Jkm5Bmz8x5rw9v6cA97GFDQ8P0llI+aub1s/HDMJjTLO6
 QrBkmX/7OPQh/tacOLrwdqF0WK3y8RzyDljmjY0sbJ+7WM83EZ7WeIO6VkjJvHFKqCU7bMiscY
 CV4pRQGAbrPzBsj+wcmErq5XjUmBhN1j1T1YllgnZCDBYG7bF6m+Wgdxn9dJWFKhtgcoY8ws7z
 /Mn+1KcE2ECAAA=
X-Change-ID: 20251007-upstream_v3_glymur_introduction-5a105b54493d
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771507414; l=5236;
 i=pankaj.patil@oss.qualcomm.com; s=20251121; h=from:subject:message-id;
 bh=0gyjuFoxs7NtVb0Ux4YIdLj9khKcKnmKap0ACu0pob8=;
 b=dJTUtNjTcfhALbWH3HRs3UkpxTJOKudj2Ddwr5WlkGeKls9076JQ3XNCpI8Ei/6jq6SSyF71f
 9jJBolgwBIlCgceq8enBgGhvRRFhmW8d2nc4H/HUJtnM9ZsSby025Va
X-Developer-Key: i=pankaj.patil@oss.qualcomm.com; a=ed25519;
 pk=pWpEq/tlX6TaKH1UQolvxjRD+Vdib/sEkb8bH8AL6gc=
X-Proofpoint-ORIG-GUID: AR8zFCj9N7TddgqHZDsK-g-91MKdJ6qB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDEyMSBTYWx0ZWRfX7/sZtJz2NOhc
 tdiimyMw7I1U993vhBcrqvNfIMf0Dkt3yDMV5awI/tNIAIkFdeHF2RkTVeRkBfaOvReol4yE0IL
 QJ0KqESjPUV4uUmAa6JHVRiv6KOXkqwh5vueBMUSn871JQa3EZmdl3m6IPUwLvu7UgaG+DqzhPf
 gsgdpAsx1oAoVztYUVJK0p3XnOnYKNf64VreBS9U/GQCAWrvdktx76mpagixsedkgz+m2VEgwjb
 RmTG52OkNDSJJtK0cmYMgXeNrPG2PmifjlBWQIAN26x9CLsKPfFiXiUSYJ3fgjSGguWmO/baYQZ
 tWWGY+HrLFyR/XhK5yLXNAcizSHyJiDGPEyg+O+6zYEck1BkjTs+AqFyNvITPc5RhCy4UCK3qM/
 5sy1V05766KrgRFD29nk8JH8VAfHGZzxBKwmbUzAY8tMZZYCFu3KY+NkZrhi+Y/svOnH7HaJReG
 eHjKxMfn7o/bX4Ml6fw==
X-Proofpoint-GUID: AR8zFCj9N7TddgqHZDsK-g-91MKdJ6qB
X-Authority-Analysis: v=2.4 cv=W/M1lBWk c=1 sm=1 tr=0 ts=69970ede cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=qC_FGOx9AAAA:8 a=pou2ygFnXE7-ag75BL0A:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_04,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 adultscore=0 malwarescore=0 clxscore=1015
 suspectscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190121
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	TAGGED_FROM(0.00)[bounces-266649-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:url,qualcomm.com:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,codelinaro.org:url];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pankaj.patil@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BC3F715F007
X-Rspamd-Action: no action

Introduce dt-bindings and initial device tree support for Glymur,
Qualcomm's next-generation compute SoC and it's associated
Compute Reference Device (CRD) platform.

https://www.qualcomm.com/products/mobile/snapdragon/laptops-and-tablets/snapdragon-x2-elite
https://www.qualcomm.com/news/releases/2025/09/new-snapdragon-x2-elite-extreme-and-snapdragon-x2-elite-are-the-

The base support enables booting to shell with rootfs on NVMe,
demonstrating functionality for PCIe and NVMe subsystems.
DCVS is also enabled, allowing dynamic frequency scaling for the CPUs.
TSENS (Thermal Sensors) enabled for monitoring SoC temperature and
thermal management. The platform is capable of booting kernel at EL2
with kvm-unit tests performed on it for sanity.

Added dtsi files for the PMIC's enabled PMH0101, PMK8850, PMCX0102,
SMB2370, PMH0104, PMH0110 along with temp-alarm and GPIO nodes.

For CPU compatible naming, there is one discussion which is not specific
to Glymur, Kaanapali and Glymur use the same Oryon cores.
https://lore.kernel.org/all/20251119-oryon-binding-v1-1-f79a101b0391@oss.qualcomm.com/
We've kept the "qcom,oryon" compatible and will be updating once the cpu
compatible bindings discussions conclude.

Features enabled in this patchset:
1. NVMe storage support
2. PCIe controller and PCIe PHY
3. RPMH Regulators
4. Clocks and reset controllers - GCC, TCSRCC, DISPCC, RPMHCC
5. Interrupt controller
6. TLMM (Top-Level Mode Multiplexer)
7. QUP Block
8. Reserved memory regions
9. PMIC support with regulators
10. CPU Power Domains
11. TSENS (Thermal Sensors)
12. DCVS: CPU DCVS with scmi perf protocol

Linux-next based tree with Glymur patches is available at:
https://git.codelinaro.org/clo/linux-kernel/kernel-qcom/-/tree/v8_glymur_introduction

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
Changes in v8:
- Updated commit message for patch 2/4
- Fixed sort order for bindings changes
- Dropped Acked-by from Krzysztof for patch 1/4
- Link to v7: https://lore.kernel.org/r/20260205-upstream_v3_glymur_introduction-v7-0-849e7a9e6888@oss.qualcomm.com

Changes in v7:
- Dropped regulator boot on property from wwan regulator
- Added comments to identify clocks in gcc
- Removed extra EOF new line from board dts
- Link to v6: https://lore.kernel.org/r/20260122-upstream_v3_glymur_introduction-v6-0-245f408ed82a@oss.qualcomm.com

Changes in v6:
- Moved pmic thermal zones to their respective pmic dtsi files
- Link to v5: https://lore.kernel.org/r/20260122-upstream_v3_glymur_introduction-v5-0-8ba76c354e9a@oss.qualcomm.com

Changes in v5:
- Added opp entries for pcie nodes
- Dropped qup-memory interconnect from uart nodes
- Update trip1 type to critical for pmic thermal zones
- Alignment and newline fixes according to comments
- Link to v4: https://lore.kernel.org/r/20260112-upstream_v3_glymur_introduction-v4-0-8a0366210e02@oss.qualcomm.com

Changes in v4:
- Enabled PCIe SMMU for all 4 PCIe instances
- Updated dispcc required opps level to "rpmhpd_opp_low_svs"
- Updated watchdog compatible
- Renamed gic-its to msi-controller
- Updated GCC clocks property to 43 from 44
- Moved cpu-idle-states to domain-idle-states
- Fixed alignment and zero padding issues according to review comments
- Dropped glymur-pmics.dtsi
- Moved pmic thermal zones from board dts to soc dtsi
- Link to v3: https://lore.kernel.org/r/20251219-upstream_v3_glymur_introduction-v3-0-32271f1f685d@oss.qualcomm.com

Changes in v3:
- Enabled system-cache-controller
- Squashed all initial features to boot to shell with nvme as storage
- Updated tsens nodes according to comments
- Merged tcsr and tcsrcc node
- Addressed review comments
- Link to v1: https://lore.kernel.org/all/20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com

Changes in v2:
- Series was sent erroneously
- Link to v1: https://lore.kernel.org/r/20250925-v3_glymur_introduction-v1-0-5413a85117c6@oss.qualcomm.com

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>

---
Pankaj Patil (4):
      dt-bindings: arm: qcom: Document Glymur SoC and board
      arm64: defconfig: Enable configs for Qualcomm Glymur SoC
      arm64: dts: qcom: Introduce Glymur base dtsi
      arm64: dts: qcom: glymur: Enable Glymur CRD board support

 Documentation/devicetree/bindings/arm/qcom.yaml |    5 +
 arch/arm64/boot/dts/qcom/Makefile               |    1 +
 arch/arm64/boot/dts/qcom/glymur-crd.dts         |  598 +++
 arch/arm64/boot/dts/qcom/glymur.dtsi            | 5913 +++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/pmcx0102.dtsi          |  187 +
 arch/arm64/boot/dts/qcom/pmh0101.dtsi           |   68 +
 arch/arm64/boot/dts/qcom/pmh0104-glymur.dtsi    |  144 +
 arch/arm64/boot/dts/qcom/pmh0110-glymur.dtsi    |  144 +
 arch/arm64/boot/dts/qcom/pmk8850.dtsi           |   70 +
 arch/arm64/boot/dts/qcom/smb2370.dtsi           |   45 +
 arch/arm64/configs/defconfig                    |    5 +
 11 files changed, 7180 insertions(+)
---
base-commit: 50f68cc7be0a2cbf54d8f6aaf17df32fb01acc3f
change-id: 20251007-upstream_v3_glymur_introduction-5a105b54493d

Best regards,
-- 
Pankaj Patil <pankaj.patil@oss.qualcomm.com>


