Return-Path: <devicetree+bounces-257289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA3CD3C5C0
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:42:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 67DC65AAC2D
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:34:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68F2A407580;
	Tue, 20 Jan 2026 10:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cgNnqwo3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fipX8zdx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D591E40756F
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768905223; cv=none; b=WfEfosghmeAcJyCQqyFGOaTZPkkh7ChTB1QeSXj3Ip/25x62VQJ8hk3xm29+kgdnqc8T6lMMMZin58av81ZHXN9WzJVcAEkft/1BPeIAsJpnUJTHnauKi8Sf30cU9v86uf5PEQC/x8VOeMvhzj6MrgcGRawf+crdehA965WHL70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768905223; c=relaxed/simple;
	bh=xgBWD3oKMcE0R82PzRBSvFmKkjuou92lS4125almkmY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=aCMfFGG76uW/nB73JVTbGQgyNmrtvPe4TrqYEWK9M7EqUNrHogt8Sw0vVBVe0GNkvxNv4uiHJKvK+fsfE5vX5wgaonj6URBDvNJwy38eqRyarHcGGJ+7fWg/IvHUU9fObvdcOKgQKSGSmYZsRslZX9UK4hYa1hxBOwoupT9LoPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cgNnqwo3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fipX8zdx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K99mU93176740
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:33:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=u3izV+aJ/Ol
	nciT5GJH2nup9BXYvAH1qV/UF0rtNbIA=; b=cgNnqwo3Jzxd+9Sr4HhpMLOZWgv
	wrndzI7F/Xkpf4/ZwW6nrcz5iev77USEeXEM6tgKxfYUHAnV8q2xTLel12STUC3H
	C8MY4i0Lo8gZwFNwY/9QmXFWe6FLZpSLU1ij7NxTDWaFhKC3i264rElKv7F8yl1c
	cUu0cf8c1yX3U36cxNX7ToCHvTf+a6YK+XV7SEG8ERalGBqGCmUgtaTmfk68QMH7
	RqCvc8Ni83GC34WWKiWjgHoFRe9dEjsebUiC/WUAQZUWyFEI1FBtxLr7hbZPOt6V
	gEWW0oRBKim66wVhpAA1dggaYl8/8wzKWyTeVItA7VXHpT2DFStpOoPAHBw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt0p2hd60-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:33:40 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c56848e6f45so2710224a12.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 02:33:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768905220; x=1769510020; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u3izV+aJ/OlnciT5GJH2nup9BXYvAH1qV/UF0rtNbIA=;
        b=fipX8zdx3z2PQen8LjUnOn5bPdHWwwrLLj/kHNnOeU3VeQVb+ocxDdnal4AKQlnM9T
         vXdxlRImTPYC1dKQwRLsHlw9ul/NtS5DobVCXVoUsTt/4YRlYkJ4dH48SH/V0vMANqvl
         H13pdijNQbKNGR9IrUlfk7jRJsUQf6T5NARQf0ExA+yBYQM14pG4w9/UMzs4E0tQVC8n
         Oszo3evZA7Bi8+0tzOCb2a7O/d8EYKxU8Lnpgxi3iaGgx7WdhEPksNoyn/wfRZuQAaKv
         WbwmsZyI7gwJxcATlAw8rwYV52DFwESiv2/l/TaVXFm9xfq3HqZ1PkdWBvcX/FZcyhYO
         EJfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768905220; x=1769510020;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=u3izV+aJ/OlnciT5GJH2nup9BXYvAH1qV/UF0rtNbIA=;
        b=f0Muzo4kelQgJ17oFAgqCfB7O+EyyZ+L1vQnupiwACj0ihcM0w2C4W3tWIga+ZodiG
         CfbUE9QcQWtj3R3ybqabgh4ITrtcKjGVqQAjWsNAH8i3OGQOv6g65RoEiANGlrcsnofj
         q7dcAjvw+ljbsR9E/hH9G0Fnonw04GC3XgFpJBPBXnU8ND6eWUls7FXr5F6hQA3C+BBI
         EYS161noiyFqHAxnqornSL4jeSOoceOTX6I+Hhkxr9bucuuX/xXT/4cOztpVtIFwMaJG
         vR1c1a0K95lzJyQH8RXrlEHQpMKOzKaOKEZD0x2qv+BaIHALHqM3/sG7A+vRU1qoyQZk
         5GSA==
X-Forwarded-Encrypted: i=1; AJvYcCULGveXNkNz31zLl5iFyOKW6u7a2GElIYD7+2F6pyJqNE4O3dunGQZKD3F+HBIePLgU8pISazkbG55L@vger.kernel.org
X-Gm-Message-State: AOJu0YxynNjXMq8zAdjueUHzQV7NZijN9FgH/z/q9/vWyX+01w6Aep4S
	P02EXgCpnL2sZiFXCu6qgj9x3oRJBUvKR/JilsOSowmEzuKpbbSJJ5GpEosWH2+euhTb/G7gZIL
	r9cvGXCtSJSb1Q9mkDRH+o9m2a6rfppGAGU7z5TEeAGvBDdFU1IUBxu4t3sN56DXl
X-Gm-Gg: AY/fxX6VFuDUXZvxiYYgvi8HJj8OJO0sH1IPxMDqiA8L6xS14x4mW+J00MzogPb8U1r
	BNKeD+M7QBiq7co4Np66hJdwY7wgOpswe8inbv1Mm+cgvYl9xPvPEURURRktGMveOQqa+jF9EdL
	AFicIzztqwVEfFKK7hkiUuu8bmzOrABJ/5gfGjS0ENmn60kb2vbtSWIWHc4vRMk9zbPujSA3bHG
	My1gTlAAUkiccqnSrHvubHyh4fGyPsGj7bdHuruLNBKt/qu0DOcQ29zOovJXDF5oRLuFpvjIT5K
	13CrvFr6EYA8PXn8VfLZJtlQZDFJoS97oV7jQxl0yW1rawFx/3EQ2+FbIJ+/k/Aj3SpUIfpJ4aN
	mVLgY+GZ2nRQWGE1Gl8ZoFhJvMJ286ztQQHLwBmASO2s=
X-Received: by 2002:a05:6a21:6d9a:b0:35f:6e12:1851 with SMTP id adf61e73a8af0-38e45d1044fmr1383461637.16.1768905220289;
        Tue, 20 Jan 2026 02:33:40 -0800 (PST)
X-Received: by 2002:a05:6a21:6d9a:b0:35f:6e12:1851 with SMTP id adf61e73a8af0-38e45d1044fmr1383436637.16.1768905219763;
        Tue, 20 Jan 2026 02:33:39 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c5edf3791e5sm10050709a12.31.2026.01.20.02.33.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 02:33:39 -0800 (PST)
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
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v4 2/4] usb: misc: onboard_usb_hub: Add Genesys Logic GL3590 hub support
Date: Tue, 20 Jan 2026 16:03:10 +0530
Message-Id: <20260120103312.2174727-3-swati.agarwal@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: 8owsKjQNBn3yHzhF7FZ-ZoVYROthhcgR
X-Authority-Analysis: v=2.4 cv=drTWylg4 c=1 sm=1 tr=0 ts=696f5a05 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=OYpQ5T_13xl2kP2VnJ8A:9 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: 8owsKjQNBn3yHzhF7FZ-ZoVYROthhcgR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDA4NiBTYWx0ZWRfX1kleeVOnf2Un
 Yu+dniRtCQrOnpghFjKwHvQQAPE37zt5rmnL66w1lESXmTNZ/lZx0FS/RRClr4qZFghHpQjnq54
 MTlX1B7TWuYc7l6BVblO1kioXaX1unDKb9t0xXBKnpHLT9wzNoYpw1/xf51LksnJj89gVePYJ2F
 OqWpVeUaXW1OFnZGh5jSQPHXdNnXvFBaB2XFguya6p0nRqnEoQWW9erDWr/QKWoBFqL6/gbVwRi
 S0rGSc0K2B6WcNgIEqS7yUzpLN36oWBUI9Cw8oTd1OW2eLdUxmBp/OeVzVPvFu7ENIbWRDJ4ZSF
 qOyxFYvQLBafDcEngm+MNpM3Va+NF/JCW1O6RPcfyCf4xmHlGRZeDpG67BY58h2xaqHn6F5OIkD
 GkEFxGznaicToww30qDrn3q9ldRNQSbtek1/qFok8uJgC6smWErkIWVuCogIr5ThVTb8WShZlQB
 ifY1BuSalLpBP7nXzwQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-20_02,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 bulkscore=0 adultscore=0 impostorscore=0
 malwarescore=0 priorityscore=1501 clxscore=1015 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601200086

Add support for the GL3590 4 ports USB3.2 hub.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 drivers/usb/misc/onboard_usb_dev.c | 1 +
 drivers/usb/misc/onboard_usb_dev.h | 8 ++++++++
 2 files changed, 9 insertions(+)

diff --git a/drivers/usb/misc/onboard_usb_dev.c b/drivers/usb/misc/onboard_usb_dev.c
index 41360a7591e5..bde303b820d7 100644
--- a/drivers/usb/misc/onboard_usb_dev.c
+++ b/drivers/usb/misc/onboard_usb_dev.c
@@ -661,6 +661,7 @@ static const struct usb_device_id onboard_dev_id_table[] = {
 	{ USB_DEVICE(VENDOR_ID_GENESYS, 0x0608) }, /* Genesys Logic GL850G USB 2.0 HUB */
 	{ USB_DEVICE(VENDOR_ID_GENESYS, 0x0610) }, /* Genesys Logic GL852G USB 2.0 HUB */
 	{ USB_DEVICE(VENDOR_ID_GENESYS, 0x0620) }, /* Genesys Logic GL3523 USB 3.1 HUB */
+	{ USB_DEVICE(VENDOR_ID_GENESYS, 0x0625) }, /* Genesys Logic GL3590 USB 3.2 HUB */
 	{ USB_DEVICE(VENDOR_ID_MICROCHIP, 0x2412) }, /* USB2412 USB 2.0 HUB */
 	{ USB_DEVICE(VENDOR_ID_MICROCHIP, 0x2514) }, /* USB2514B USB 2.0 HUB */
 	{ USB_DEVICE(VENDOR_ID_MICROCHIP, 0x2517) }, /* USB2517 USB 2.0 HUB */
diff --git a/drivers/usb/misc/onboard_usb_dev.h b/drivers/usb/misc/onboard_usb_dev.h
index 1a1e86e60e04..af9f3a33e850 100644
--- a/drivers/usb/misc/onboard_usb_dev.h
+++ b/drivers/usb/misc/onboard_usb_dev.h
@@ -108,6 +108,13 @@ static const struct onboard_dev_pdata genesys_gl852g_data = {
 	.is_hub = true,
 };
 
+static const struct onboard_dev_pdata genesys_gl3590_data = {
+	.reset_us = 50,
+	.num_supplies = 2,
+	.supply_names = { "vdd", "vdd12" },
+	.is_hub = true,
+};
+
 static const struct onboard_dev_pdata vialab_vl817_data = {
 	.reset_us = 10,
 	.num_supplies = 1,
@@ -147,6 +154,7 @@ static const struct of_device_id onboard_dev_match[] = {
 	{ .compatible = "usb5e3,608", .data = &genesys_gl850g_data, },
 	{ .compatible = "usb5e3,610", .data = &genesys_gl852g_data, },
 	{ .compatible = "usb5e3,620", .data = &genesys_gl852g_data, },
+	{ .compatible = "usb5e3,625", .data = &genesys_gl3590_data, },
 	{ .compatible = "usb5e3,626", .data = &genesys_gl852g_data, },
 	{ .compatible = "usbbda,179", .data = &realtek_rtl8188etv_data, },
 	{ .compatible = "usbbda,411", .data = &realtek_rts5411_data, },
-- 
2.34.1


