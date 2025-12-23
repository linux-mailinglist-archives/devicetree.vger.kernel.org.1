Return-Path: <devicetree+bounces-249187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC05CD9C40
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 16:24:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ABC85303D8A3
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 15:24:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CF4829C339;
	Tue, 23 Dec 2025 15:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YRUlRJxe";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ISfqpJEt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DEF0256C6C
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766503474; cv=none; b=E4KWPGVv2vyipz/LIOYlZ0DSIKmOGhE7gy5TD5/mWaC9sSQYDI7CF9NLIF9+FK8JFuecV96yndpSnu+DXX1Cdb7JZxQKLFFAQJVZQUw+FD13TsMxX82s7EKknw/ULOJMRiexLLTWkd0P09Kb0jr4y/JDIfi7BXgtQWNbafsiWiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766503474; c=relaxed/simple;
	bh=tfCmGWuWFSw1zXPwxcOw/l/wjenGNWYj4UhPm6Q5Z7Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Jfk6Ha8fZ3ZSCi+UvXIX2IZO4JZViwhrPpC6xzSx/b74L479SpUNLDWgl/jE+gb2vw0WIQIHNEUaDClJMZBI2oyDK0yn/CzN4aY1XteQJic86wjgwKgUoCxo2MXy/fCgIttVIfOYWM4SX07h4iZ3oJiDoTDZFc2UTJo/WUIR0yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YRUlRJxe; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ISfqpJEt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BN9prMA1889146
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:24:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=QMmcdT+K8wwMJ6Nc4yP90XgGiFCkV+mKlk/
	jeKDr12M=; b=YRUlRJxenXvQ+jR1NcpWqryBMsf6boy9w4ikbM1aqcSteWRUEak
	izAeHOrFG9jfp2UEVaGRlMBxf7+vOEbQlVBIO4EIcLYDVwfFo4MFJpoVqjf7ZjpB
	oR6MyYa9hw3iMuvcwSaSk4HbyfCQQDgoGhGfKyPDztkQgH4nKCVV/RRZl/3Cs5wy
	P1YeFpQ+8bk+fkc1OFAh4oami0eqc5glTXc9/vhI65BWT6PsMBYLQYDP6jZgudyd
	utLo6YXeiVGUqx9Dqcfm8f9ahaMQLLaAJ0TqsSjozbBoeHwZX9et8O+FjZYaPAYO
	GfMboj/MHG7RhG4q7RTNHOrUusavxDhj65w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b770am0w0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:24:31 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee1b7293e7so178323031cf.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 07:24:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766503470; x=1767108270; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QMmcdT+K8wwMJ6Nc4yP90XgGiFCkV+mKlk/jeKDr12M=;
        b=ISfqpJEtl6MW3B6TniFp6a/9ER7rflGFBnMHxZNsbCynAwFpMCEHuCceLygNNtj/dP
         Xnw/O9yL7at3q9T5LCn0JRACLQDVaorhh4pE6WZ3NW9TosFo4AfUFZpwZGCSOwc+sA9S
         yAUjEuoxB+hZCKjij5gEl0OG7stZs1tk0MYPHwIGGLqqv/0JaUXymjyzhT/Bz67e0G90
         SiLukokh03a+eo37KnbGoE8toL48o+eksf8o2rVnXS+RFQXCICtNPpjQIJmlI59nJ3Qq
         ASNKJ7z3s6tBLRIsC6Uh1Npln5TgI2MnjmLAgBvM1Fp3XtnpHWqKMUgd+FZJzjcq+Msb
         20Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766503470; x=1767108270;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QMmcdT+K8wwMJ6Nc4yP90XgGiFCkV+mKlk/jeKDr12M=;
        b=m2j5mkpj8OXhIaV2OIaGxjYqJj5i1MElT8Z4Oh70Ip8ADq38KyptDzhkPhDoLmxiB3
         Qh/SxYzUb2Sdmx2+F+bzzidahS7cmJlak55J0Bd9tIKw8nRGOg7G4Ngb7waTizhbYsLd
         bfXHn8E16FqnXJMYeuPpJM8VBYjqoM9G19LN1mDyZG44SiImsQZ47bgG5eYSCdFWCIIx
         MuJQYsR+NFApjPyynVdiHFZZ6P8akrLuNhJ7OtS3EYB0cl3QZjT3M05aA2uPUeal/4DS
         meNiD+m6RsSHIiQpWa+d2tnOYR1wv/yKh9ff99jEmc+kwW2CCaOW8t1X08Kw0etvn44Z
         USUw==
X-Forwarded-Encrypted: i=1; AJvYcCVDB9xL+1lH9zMFZAt/FgdQJ1hPAjajFhcQBP3DWEc+G6XSmpxU1eI1SBVIrhYbCTd71L67/sXtLkfQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzf7HdtEsN9cIDb5JSP3Y5cmks3m3jdtLIxcRsthl9lJvXUiowd
	KRLfeOmug1TX72C3ncyZ60iHg82xrpsicTGSLx8GcmlFh+SkvGiiXkSOkzS8XV6ogFP+6hGfKDV
	p4bYQRC3YlfeYEbTxwLCubKJOuAj0MBKkS+nNCJteAxLTWivObUs/dRX45/Z5S63x
X-Gm-Gg: AY/fxX519PvusyhSbhZSPnoXZFjp02szf0+WBxTm+PMrg6Wy4uVeFeFkRimRZ6TVsB4
	dYCHknXNM+GwLuSKJGK8TLDzjxsxSAb333O5bFel1aYKN2XBq88dRRk/MwkZgReIDXVvf+HuXL0
	DMdiTPbmPLgscCZsy9BH9i5239fTniyG/d5UzKUaYwb8Ldi3M9OEDnx+QszFhsSHdciiwGuPvUx
	ggYp9le8aqeUJut0hEa2nec01AevmN2lHOGHu7sjViH6sRkd5LNGyLWB7heuwkxIhfwcMoGpGIu
	U9RNEoOaQnOcAUMu7aTdQ3yt1hIorZ6rfZbi4c6nGtIjngEWpB3LWqB4Ui7T/P3ee+b2wZ+q2MD
	EdvZTnI8PaarjGkjeEEMPutZmXaCdBq3HnhaxYhWmv7og6tTpRVS2M1ETWNu6Wsxv+Cc=
X-Received: by 2002:a05:622a:5a07:b0:4f1:bd73:ac6f with SMTP id d75a77b69052e-4f4abdb8cc8mr231626151cf.74.1766503470542;
        Tue, 23 Dec 2025 07:24:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG50u2D69lwV8b3TXu4NEv9KuyeK2nPzCvtYeviZ5nVPswjTYq9WxwSsmE5GaZkxzYacemvMg==
X-Received: by 2002:a05:622a:5a07:b0:4f1:bd73:ac6f with SMTP id d75a77b69052e-4f4abdb8cc8mr231625831cf.74.1766503470119;
        Tue, 23 Dec 2025 07:24:30 -0800 (PST)
Received: from quoll.home (83.31.98.88.ipv4.supernova.orange.pl. [83.31.98.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b80377f2f18sm1441971566b.0.2025.12.23.07.24.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 07:24:29 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Peter Chen <peter.chen@cixtech.com>, Fugang Duan <fugang.duan@cixtech.com>,
        CIX Linux Kernel Upstream Group <cix-kernel-upstream@cixtech.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH] arm64: dts: cix: Use lowercase hex
Date: Tue, 23 Dec 2025 16:24:25 +0100
Message-ID: <20251223152424.155253-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1039; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=tfCmGWuWFSw1zXPwxcOw/l/wjenGNWYj4UhPm6Q5Z7Y=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpSrQo7RVLhUYbhcym3Pt6bv+anUgASPS/TY4yL
 Nq8sXWeMpOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUq0KAAKCRDBN2bmhouD
 1wIwD/9wkHL24i2n7uk3eE3ApWRssD6UR7rGxMsnyh/yrEWkRjmqtcrq8FaHa7pew3iASN9FhNO
 FxUN4CgVqpnDiDVw63ljF0oh/HRMXwt6V/y+ljmx+fqLCj0cOqMYDImkLrKtqwBGbQC2ipjSGsa
 ZLydjg35PViPxcSfMHGtwgGY+UqZILz8RsIbtNLpIJD3BxmDO836xYetm4mbqCCKxwm0j479YqL
 vnWsVXXHwBNi0ILoc0LYz7/ILoGvFQk6LJ32f7CE+J6p6CDloT+QUL2p+MAf8wFTBfnWrTA/pgf
 MAbI4rKy16KvmZCIHGRL8WdVLQqNFs9hxSqo2IMtovuxvxCsBOXmk4C35Qmf2K3BnyI153CNbx3
 wqU+X+Bey2hapwdX7rEgfS+5Lspt416rgcQlf1+tcKRZeAYs7y3qRHFzRkWtpePoRSLl87PjypA
 CXNiprWN9ZwcWb1hxo0jpPTw7eU3a/Cq1qBTlxHR8mHe75UtvuPa/O6fQC/kYhd9Mor6Eg8H7Uf
 7O4Ovte73P8Jths10TtG8oMYfGU7uHx2MFvAMdVO9ZXsl6ZFXzSRnV0w7xKTZtb9MY4PXHHdTsO
 aACANrVl2mMHU0rDZGqfaRbBVVYkv8SD090i623eT7a4JZwfLSj3+DS0ddnQnvSXcjayOQj52rQ Jexx7lZsXEPtaRw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDEyNyBTYWx0ZWRfX9LFj/mmbnckx
 2Lf7Ad8UuAlK1Z0jIMVE17fI2HI0zKs+ppXHFTrkDA/YI/pYOvU95LnPBGCxLzvwIsY+yfTC89u
 ltw9zFIvkUM10aFuANk+KH4VAotL82BARTkLxT/tkWuB0R3GUFCNkIGKkYBKPpHwt2NNyabX0gi
 aPMdZUgQp7F+RDRSqLah74o4BW8EF5jjaZ8a0YVVxdtVeIYNw8dRwx5JbAe9I+SZNMMsj4R75xS
 /zP3VRjBgffWp5S9hcqV7XXn0dDm/TFFY5PUBP4tgDv3wSE+FrkC3XlY/EXKGDeXbTN0pE5Uzz6
 twFgX3ADtoJI2rrEZqXTyo1E+edHvRPP2m+JBRf56IEl1RPvX5yhBHLpyU33gSbmv7RPKttDT1r
 H7uONWASm8MNXqmbRYDTJo5y/RLBq8g7ICNlAB/ZxZdI5IZO6nQl5NlFt0xrfUX04MWORvGVAdW
 OPq6n8MREgA7l6BYQbw==
X-Authority-Analysis: v=2.4 cv=VqAuwu2n c=1 sm=1 tr=0 ts=694ab42f cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=qe4J/qXhiWkb1JZGYKbLYA==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=41lT66G6l7ICSz0wmBcA:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: OEvXHEOT1JANhp6vqxsJ3tQKoFMqjCoL
X-Proofpoint-ORIG-GUID: OEvXHEOT1JANhp6vqxsJ3tQKoFMqjCoL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 impostorscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 phishscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230127

The DTS code coding style expects lowercase hex for values and unit
addresses.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Patches done with sed, verified with comparing unflattened DTB and
dtx_diff.
---
 arch/arm64/boot/dts/cix/sky1.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/cix/sky1.dtsi b/arch/arm64/boot/dts/cix/sky1.dtsi
index 64b76905cbff..fb8c826bbc97 100644
--- a/arch/arm64/boot/dts/cix/sky1.dtsi
+++ b/arch/arm64/boot/dts/cix/sky1.dtsi
@@ -523,7 +523,7 @@ pcie_x1_1_rc: pcie@a0e0000 {
 			reg-names = "reg", "cfg", "rcsu_strap", "rcsu_status", "msg";
 			ranges = <0x01000000 0x0 0x38100000 0x0 0x38100000 0x0 0x00100000>,
 				 <0x02000000 0x0 0x38200000 0x0 0x38200000 0x0 0x07e00000>,
-				 <0x43000000 0x0C 0x00000000 0x0C 0x00000000 0x04 0x00000000>;
+				 <0x43000000 0x0c 0x00000000 0x0c 0x00000000 0x04 0x00000000>;
 			#address-cells = <3>;
 			#size-cells = <2>;
 			bus-range = <0x30 0x5f>;
-- 
2.51.0


