Return-Path: <devicetree+bounces-274205-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEpMGDWPsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274205-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:50:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4EF266C7D
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:50:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6B67D30120F0
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:50:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 006CA36EA9D;
	Wed, 11 Mar 2026 15:50:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JL1maBP/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HPYM4BhN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718D92DCBE3
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 15:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773244206; cv=none; b=SP2kDXMoe0HQ9tCQcEUJPeM3k5BoUoLpy2YERevHg/S88YxApbCLF4m4fTKKlLVrDZ6mdL0qgWoB0SIo58gYjDmZkd4BGDn8OF8zqYsQCCkJIl9Vr9imo5RZv1f+Nh8Slian5+35BrROGzENbqDXakHATNNd4r5xxaqu49Fji0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773244206; c=relaxed/simple;
	bh=C2nYk8Q+Ab3eCX4sLeShqQsezv5EmApIAthgh7Ov5No=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YtDV5hed3qkN8WM0kyMMFV3BbRdqsJVxnjoNK2xe1G0tzDWSsiVqdN5RnDueEMFsavpE7dpG/vxKQwI6dI5xQEbBvEvMIk65ZUSZf0hBJyMaPb/TI8EmfsaExHHkqTIO09ySrsUtnGHrTTH/ejRUWGvQpvdeiHDKguuPUsD/KdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JL1maBP/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HPYM4BhN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BF3fuI614124
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 15:50:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=AEkwQaRLxJA9vvcYTFRA9xeDnZL3eiAJd5x
	IuCJlDT8=; b=JL1maBP/kOYChBzp2/3bUeqymrJt8WKTQIENKIr4PcgOVMys1uy
	LqLnS9mrCWEQazEsoQ4uGykKb6m+mH0E7SL82WzGTgINZvsbFd4TfVR6Q2R6EZOo
	GZaF9ztciDkkWMO5+Iklnafr9bdXMn21ZQ6jyqnYTmfx7s5mTSm2bh3LopTJAcAt
	yHVIOcyJlqwMO0a+C4x6t/6X8XPIOrR2vO+gNkQdzFuXRb9n7xX8SLhyFFXAxzIq
	je6biAa5N4FQT3u6+lVHPeyAFDf3It+g7sVV5g1s+RMDBnf8BiHPY69OLNoMKap2
	KqaGR44Lm0hMJ/xzeTi/xoMvr+SvadjULaw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu0jf2nw5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 15:50:03 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd7fec8d44so2149498985a.2
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 08:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773244203; x=1773849003; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AEkwQaRLxJA9vvcYTFRA9xeDnZL3eiAJd5xIuCJlDT8=;
        b=HPYM4BhNhagPGDGtoazajXxsSii97SkVpgGKMP24mg/qM0reQ4Kgqe40BtmTy6WV3s
         SG2g5UdZYZQqJOisfGiZGkKrDwFZgjaBPs0VVOjXBHEvHFkpSJKgVHPTAib65udt40Dr
         LEeciw3iGY2/Hn0w9AoiC/JLVwReHc5yOGjU0W0/wmOOf/QEYHmS3Vxd/6G9odOBkjCN
         ynli7z6+nfDHu2bnK682unOGG/da7u7drUEpgVAJYNB6wYE1EK/59EZTuaGS7QH+HnyE
         6DoAtG+jLZi/zzk6IhNxtdp4gOKrIqtDAxHM+WBMI1KQJ7dyGU/Wjl7YulYYeeHMUpx3
         4ndA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773244203; x=1773849003;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AEkwQaRLxJA9vvcYTFRA9xeDnZL3eiAJd5xIuCJlDT8=;
        b=PzJA3jGcHYkv8yrvBizeG1rDHw5iMCsvnzhzYAT1oPw9qd1zKzkZXHbRWK3aAwKieP
         mZZAUNeDz+75JNbT/LhHra3MdTc9kLKu1+CREvINW8nVE6AOi0hIxkfKIpVTfiBaVe94
         mFUdfDRerxFi2FPA+1PB8smQGV9gze7ipou7jRT/Ewmz8zpc731qdLyk9VYW3R3yIiBe
         xOj4Bs56gsjjz0b7GnKeYmH/nLGKNdJeN9Cz/idB03E7NRo+SxPy3xhVTDg/K5C2v3Rc
         ZWK07YkhGNlaYIc9cb1uLUc9M1YHGzNwuXE5T01Qga1AxupjiJ3vCzadlwpX0Az/pqiM
         4bHg==
X-Forwarded-Encrypted: i=1; AJvYcCWCJkUlZyL+B+BQ1ctiH+iPCnyiKbRt71NJK3MNYLD/1S11GhY+TCIcVqYkcC3GHPQmuvZejGj/nlkB@vger.kernel.org
X-Gm-Message-State: AOJu0YzqWhX9dhlLJEnpJPMGf1Y1ybMtFv02tMM+d1DDy6rs0FsqONrb
	L94byN1aGrIAvajkdmNlz0NxXI1DB4gwES54jiQX+sgyA0eFBlOewrpmQHN4NW629ZQoqT5XnKv
	5iK3tDvCTaYhoUbTGQambbYg54Hzj9Kk06F9INfeG3UAJ1Oc/vSD5cU7w2r052K8Q
X-Gm-Gg: ATEYQzz9+lCjoPRgFE9pdxkW7jLeEy9lMauWgqiRTW7+yRLrORuZ9A2LtJXDrExceof
	/tJA4OZBJ99+KA/F5YHgg9AeW4ExDWRuEyNvCRPiyhi7/IJYQCPxRbQ9H5QzJL1vh5j5lRzZPLt
	FWIT173J4WWWPn10dEe4cTGsEuLwp4ooHXF245UDOCggEoc57k4tcm9p326NQJUsE8OaXSmXzc1
	m848/D4t1BZnjioVKsez/7eaV0+r8HxVTvhS3hHGnsr0fAVGJ9VbzS33ouHqc0C2mPS+USEfRg8
	h7TThkc/teH8e5YtMS8LscZNAeZS5kN4NPxt+BhaPvYfBqJUMCyH6rAWYDiibejrd1cqF5Ffb1Q
	5N5aQSAiHyUUY3uTeLDmxSF7YHPMNEc8IsB2t
X-Received: by 2002:a05:620a:4710:b0:8c7:8b8:e0ac with SMTP id af79cd13be357-8cda19e4a09mr392806285a.12.1773244202720;
        Wed, 11 Mar 2026 08:50:02 -0700 (PDT)
X-Received: by 2002:a05:620a:4710:b0:8c7:8b8:e0ac with SMTP id af79cd13be357-8cda19e4a09mr392801885a.12.1773244202236;
        Wed, 11 Mar 2026 08:50:02 -0700 (PDT)
Received: from quoll ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b0c678asm25127285e9.13.2026.03.11.08.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 08:50:01 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Richard Zhu <hongxing.zhu@nxp.com>, Lucas Stach <l.stach@pengutronix.de>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Jingoo Han <jingoohan1@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        imx@lists.linux.dev, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 1/2] dt-bindings: PCI: fsl,imx6q-pcie: Switch to undeprecated reset-gpios
Date: Wed, 11 Mar 2026 16:49:56 +0100
Message-ID: <20260311154955.145120-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1322; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=C2nYk8Q+Ab3eCX4sLeShqQsezv5EmApIAthgh7Ov5No=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsY8j37sEQYNwmd65+VttyEmNwS7bCq2VKR61M
 oCYcZDBMZyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabGPIwAKCRDBN2bmhouD
 19nVD/9IUrpN+dEj0fwoVFqS6y2ML9jcKKsWw7J+T0N5997e5aKAf9bXviyJxONAOuJbPW1aub5
 O/QZ07/jMTD/qSoZSkZxw2tupWWTX8hQX4qxvm3+ipKVtB3f+BvrszabFBb9fdkCv0br8BubzJL
 4VD0KU5PXunS0t/vDwGQAABz/SZ4reuF+BnDJ/EhPuHngRJCvkLgqMzP8sQDb7TYHO6JP5Fu5Wj
 eCupammRMm8l4UmHsq6pF92t8kHLDAgetZTe0m6tX1ACwKAzjLxlsii26eZ43tXTfqM+/Devqih
 MjU/JSqVSLF24hVXBmowLTeNDCoefiFNQ+mSBl4U6IRgI1z8neaymNXPCfE1F1xYN3s3/K4C6dd
 w7vydDDoygzl7lzHUVic5qAINPYCmDnrU/kgO7d4eEcN0EmvDuxay5FHZdHVJiONxfDOrtmUXzG
 jZx+r313tKkUX0lgtrSyHja+yfDG94KxKtCYqJZMQ9mBhLbbtVhza1yRZxCv6Ws8NzHOV7XjjJ/
 mjWRvef5IPAroB3vpYid5UXQs6id/J+9xisIBvi9W4xr3zCk2KHMmUtHoVdinoZxP6Mg45S/mMn
 dOZe8FSLTfdQqgQE7wCfCozJs9l7uWerJzCF+m6xJcoDv4wqCrXe9Zwoo71EJQzPm8SSS3MLR81 E4gyne22u+GnGlg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: vpCefTdejRZR1XuPy90C2tWq3zxufmF-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEzNCBTYWx0ZWRfX1yjFyK/3DSXR
 NO1pAXYmej3Vm2AB5yf8u08l8Nu3sWUYlLVHipXyzOaLzc6AhEjKiB/Fd9q6vxSZIwKt1nqpI6I
 R1v/hKBo91yjKQqFqXLNKL1tTAP8zCu02z0VzDLMPE+sMiE/Gtnedk+qXYhwdxZesJN0HxRE1fs
 KHjkBK8L5v/oEreVp+AQ3H6beDCBjHq2gw69HiC++yMTitK+3jDrOemzH8kFS6bg8DsGa9uXenZ
 peSkMUkWSvlR0fGDlykIlaTF2J7PzGkq//mOHvaWEl9yNp7KrvfL+wGLxdo5HwwvBO/W8fD36Um
 moVzs25pRtsPMIo6+obrjoXRkCnRTuvSnnqb0rWZe0FnQCRATlasmNgyv8Pb2ieKydniWVG9TsS
 UZBTwvINa6wBr/Z2qyzb7Pc+HQLIeB+M/R+MdwxVd5iLFNT232hb9nMvXe1RAtYYU5y4p61CWyf
 I7DXOUnP7kPZ2D5sM+A==
X-Authority-Analysis: v=2.4 cv=FMMWBuos c=1 sm=1 tr=0 ts=69b18f2b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=9ZXkLDzuA0wS_hkKTN0A:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: vpCefTdejRZR1XuPy90C2tWq3zxufmF-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110134
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[nxp.com,pengutronix.de,kernel.org,google.com,gmail.com,synopsys.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274205-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AE4EF266C7D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

GPIOs with "gpio" suffix were long time ago deprecated, thus
"reset-gpios" should be used.  Linux kernel supports both, referenced
schema snps,dw-pcie-common.yaml lists both as well and this schema uses
unevaluatedProperties:false, thus change has no impact except code
readability and removing deprecated patterns.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
index 12a01f7a5744..b9ba938c6239 100644
--- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
@@ -58,11 +58,6 @@ properties:
       - const: msi
       - const: dma
 
-  reset-gpio:
-    description: Should specify the GPIO for controlling the PCI bus device
-      reset signal. It's not polarity aware and defaults to active-low reset
-      sequence (L=reset state, H=operation state) (optional required).
-
   reset-gpio-active-high:
     description: If present then the reset sequence using the GPIO
       specified in the "reset-gpio" property is reversed (H=reset state,
-- 
2.51.0


