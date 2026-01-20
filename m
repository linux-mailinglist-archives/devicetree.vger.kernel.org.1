Return-Path: <devicetree+bounces-257290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F16D3C5E6
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:47:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5EB9E3EA282
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:35:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E1D6407575;
	Tue, 20 Jan 2026 10:33:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YlqFN7DL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Vzi7s+D+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 896EC3F23A5
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768905230; cv=none; b=AYOK9d09aWDzCRYgTfme9z1LeU+Li2WRJT1IP54ewOUe1epXvYJ4tUXzHFvcpXSD6gXMp9O3+aPWptdRDgFVsqbIASmuqTZxSf7bc/nBK/OW33NVTTM/Q1VB84Jiu6okjyAzf/nuAOpMuwiX1hu6l/GI+fIqrLJNZMihTv6uUZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768905230; c=relaxed/simple;
	bh=Xkww8B1bvxwpIcKpy1JewYNymNIwaL0b3k48QMs66Fw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=huHlLpdQxgMuNMZovt4CZ+E0Zv0PwvoAgsiue2tRfvZQjfMTkB7h0H4KBTYV6yriZMjjNfer2k20EMRDOpCJiolm4Et2XJUthsOIovMxC8Wvw+Mevw+Iuk2qCJaSn/rrNPFBStoOJN61rGO8C8nHqTiyxJtZ8zWgYMe35Hql3H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YlqFN7DL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Vzi7s+D+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K9UuqB3177315
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:33:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=zbZ9dEOX181
	iqiCrxrmv1ex1DUncYQRrvsx5WfV8NQM=; b=YlqFN7DLCKoPxjFLqqKPRadGK0W
	Jt+Kk7ABNzVRX65jaPOVXpHw0xYHd4Z7xcg/xuK1NVNQ5nQl3mpE9EmnJswBs8FZ
	f779YOe8VZw6nNS4j5ED2MdVoQvaE5xqukh6vKePdGafvVIP5gLmq1oOn6Ix3oBS
	BJp92siB2+5f5PKobyBTcGpSIA4aH3v17HzKCRqLhLqMsqsAtBYvx0i1HTpzUluI
	lL0I8txrU1GaRGaoWD4a+7kYMt0bELTBXT4kPWNv/B0yBWwoC5XdHELCMDDMW0IG
	nzJHjsfl49x6GZ2hOu2fg1qrvV5H5MYQAUKvpl8CgOnR/c6ksYFqmY5hhIA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt0p2hd6a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:33:48 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b630b4d8d52so3144349a12.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 02:33:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768905228; x=1769510028; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zbZ9dEOX181iqiCrxrmv1ex1DUncYQRrvsx5WfV8NQM=;
        b=Vzi7s+D+EtIUxloh7+7qQBcYtCu4LjO/fAfELwGqoUvXdrV55Btx+UNflGgFBHRpLJ
         zoaJK5OBElcLgMYX4LNp3ufI7xP6KMfx3D5ATI74Q1XtcRRy/2zpvkgc1k2fXfXWWjOk
         cH7XL+vbSabcGYO/ais/A63BpqdTn1GAAYNhic2hWr8dFEulT9RWzYBQoRNA1S4GwfjA
         hILpBa8Nbw0KyUITdGIiPrBg7sjr83LWWZcxJOg+itCoWw62KT7Ds3mTXQJX2Ii/Knw7
         3CKKcP8wmYv4VVpL5PZm8dhOZDT9WaeKQoKRdg0jdcLAApNt6eZD4D7g4zR8X02JZO1Q
         BKkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768905228; x=1769510028;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zbZ9dEOX181iqiCrxrmv1ex1DUncYQRrvsx5WfV8NQM=;
        b=FaAzbHhxYettXkGtoOg5zlsf3VlKX5BPKBySx08W/CbJd2FNCep2Xx5ZcCZNKv0Q9y
         t5HOKKaZq6Ig7xGVcGC5zkZVdaHK7JjaAT6BeIigkqNs9tEp8OYqSmPHgHzah6FRjPiX
         ZeGu3ua+d/1B/DjIGSnTFiG70WguMxG2F9XK58WFITbMR1Z1z/jJN7FNzjaa56m0gfN3
         ooBaA0r5OcwD0voZ3d8WWbgnnl4+rPNjUX4WCrhrSh2ENfKp0E6Qm6ccLwOl4nG7it5J
         eC81cmGmfBGIlyuI+rg4LSer+FeewRutHbfg/gbiLIfvs/H+Y4SRFfdJI4oy3EH3IUYj
         wuvQ==
X-Forwarded-Encrypted: i=1; AJvYcCWp+/NqN352E9IdGcJRv9uXct607gWXQwjDhOOtYBWpBXu6hfi5kXnA+Vv0PsoDZ2sJGXKf1ybEX/8M@vger.kernel.org
X-Gm-Message-State: AOJu0YwoQVrVoXbGFq+SwMXjt3mJWLhedpJAoMdI4Cu7QMJ+VE7FH891
	ndQRYuzcPVZqiWacNbdoWPovDW8tyA/2XCEmligrpQMcUObWwMTs5DASqEVpGs3uw+3Z2a8596I
	xvA+2y+A4HlCH9MYlnyxlnzgXfyxGOjnF9kcODU4VxFURs1J5HsjiEy0PFjuSruLN
X-Gm-Gg: AY/fxX5v8ea2Hhx9QlhMMuikODB0ePpGni7cA6PZAJKZ01JhswFTfFfh4XY8F7qb8kq
	a1Jzni9WVvNz97YS5z+n90F8/YaB7SkZxZkdJTpTGGjIkHRx9/MO4Nv2M5a5iqNSm6OFQfWzj12
	YxY1miA+CsLR+/cHuJ0H5lpd5Y9pDTlFTo6R7dJGqynNoWMXVTSrowH0W3JqxG1YQHDCpz4QG2k
	UD22kP8UxD9MgL53Wh2wLs+M906JkX9yVCktQa5TRKXWAFecCjIWvZl3ptnfvN/w8HTadbtFxi3
	pREPjuJGR5qSjd7s0N7BmzKm0E2B1vZk35Tzequoa0yOtjVZYw2UGFYkD6pQZ9Vf7dl8Lxu9EFV
	JlkA1mtZgNVeLpvWsqdAtYgxHflf18+GJdXW4qIHFbfQ=
X-Received: by 2002:a05:6a20:3d83:b0:341:6c8a:5218 with SMTP id adf61e73a8af0-38e00d47cd2mr12826864637.56.1768905228119;
        Tue, 20 Jan 2026 02:33:48 -0800 (PST)
X-Received: by 2002:a05:6a20:3d83:b0:341:6c8a:5218 with SMTP id adf61e73a8af0-38e00d47cd2mr12826842637.56.1768905227527;
        Tue, 20 Jan 2026 02:33:47 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c5edf3791e5sm10050709a12.31.2026.01.20.02.33.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 02:33:47 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Stephen Boyd <swboyd@chromium.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        =?UTF-8?q?J=20=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>,
        Pin-yen Lin <treapking@chromium.org>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v4 3/4] arm64: dts: qcom: lemans-evk: Rename hd3ss3220_ instance for primary port controller
Date: Tue, 20 Jan 2026 16:03:11 +0530
Message-Id: <20260120103312.2174727-4-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260120103312.2174727-1-swati.agarwal@oss.qualcomm.com>
References: <20260120103312.2174727-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: D1E5tZCnKH0QpfHhDvtrThTIWXe9SVWk
X-Authority-Analysis: v=2.4 cv=drTWylg4 c=1 sm=1 tr=0 ts=696f5a0c cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=917_i3xC6rPZgS4eXuUA:9 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: D1E5tZCnKH0QpfHhDvtrThTIWXe9SVWk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDA4NiBTYWx0ZWRfXyBj8mgtEgSk1
 aqNloWZaOzk5uWHaNZO68Prmp9umcP4wIEP/9yWYICQuOxwlBZzWX1QkH6GGG4uft7QYx+6W+fE
 RHsOmNSwsRwpcmdoQk6rSNDyzDTqJzVLitNSoC7keZvmn5TzSZpDZmGAVpp5ISxtOl3940HdFXe
 qTiWBnS2LmjUj+puCsCbamcELLEjDKJuU3N6zgsvXTrFRJ5kxvdp5LZ6XokVMvRMT2MGiTnfviC
 CXGt0d6nLf+UUuZnQ+ajEdPlCtA2Nbwl9G+NQyZ/8VL5r5txHBxNjv6TGEVH1JDlHrSA9KHY2oE
 5zw+icIC/Q2CzQOWA6j8zYQuwOQNG/4Vgj9q960uGC5ju/+R0NMQQi6k4oOx1kE/pZ/0sKDpa73
 7Ttaznjnr1hZ+t9DCojgzmXLV9W9/3FOdDFKhrnmwyBTJazGrctmLOo3b98Nupjx2m4bpBnqm/T
 69hEO+N/ocXG46yF6QQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-20_02,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 bulkscore=0 adultscore=0 impostorscore=0
 malwarescore=0 priorityscore=1501 clxscore=1015 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601200086

Rename the hd3ss3220_ instance to improve clarity and simplify usage when
adding a secondary port controller.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 90fce947ca7e..074a1edd0334 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -62,7 +62,7 @@ port@1 {
 				reg = <1>;
 
 				usb0_con_ss_ep: endpoint {
-					remote-endpoint = <&hd3ss3220_in_ep>;
+					remote-endpoint = <&hd3ss3220_0_in_ep>;
 				};
 			};
 		};
@@ -522,7 +522,7 @@ ports {
 			port@0 {
 				reg = <0>;
 
-				hd3ss3220_in_ep: endpoint {
+				hd3ss3220_0_in_ep: endpoint {
 					remote-endpoint = <&usb0_con_ss_ep>;
 				};
 			};
@@ -530,7 +530,7 @@ hd3ss3220_in_ep: endpoint {
 			port@1 {
 				reg = <1>;
 
-				hd3ss3220_out_ep: endpoint {
+				hd3ss3220_0_out_ep: endpoint {
 					remote-endpoint = <&usb_0_dwc3_ss>;
 				};
 			};
@@ -904,7 +904,7 @@ &usb_0_dwc3_hs {
 };
 
 &usb_0_dwc3_ss {
-	remote-endpoint = <&hd3ss3220_out_ep>;
+	remote-endpoint = <&hd3ss3220_0_out_ep>;
 };
 
 &usb_0_hsphy {
-- 
2.34.1


