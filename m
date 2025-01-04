Return-Path: <devicetree+bounces-135501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D1EA012AD
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 07:19:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 37CF03A41EE
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 06:19:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 063DA154BEA;
	Sat,  4 Jan 2025 06:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="avhPSYAm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 863022AF09
	for <devicetree@vger.kernel.org>; Sat,  4 Jan 2025 06:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735971563; cv=none; b=BsIWeBEeBlfuOOAeXxDNyHLzgoenJHyZEezS47/fB8FPUzZGH0WPiX8GIG2OjxUNFWNUWpw25M4JGLDQfG9DAjqbTwOFC+6AEgKtj3DoRVbm+c5hqZAHY7zGVx4mc1vkaUkeffCQHvS+j5Mwh4CDHN6nKqzS5Yr+gYmLs2lSZis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735971563; c=relaxed/simple;
	bh=DP/l7Yoeg48ucLXReCMjDDAHTnXmcOLfOXPpLm9/mx4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=B+5AazCCdVdUYMWaBgfLMoD4JSYHi/i/81ilPF+47aWJ6BRcfoNS7DoV/ox7AgBVqzPGv3eSgUJEP6Pj7LqCGvWVPkEVrXGrPJjYNNaO0CJv8ax2FiTSR/Gxji0lEZTQ1i3faFJYXmUntnQXtTSi5JI3FSV1//rCZwkfWCL8foA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=avhPSYAm; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5401be44b58so13716866e87.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 22:19:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735971560; x=1736576360; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kJy+8+fVEm6YK8nt+UA91yeH//nrEvU1SS58aGvv8Tc=;
        b=avhPSYAmx9CX+GVjr1OwfqdM9Up453a8l5fE+pFPPPK1WS2s18D57Lh7SrD+UHuLB0
         9hS+V7D7NV7VKcmvl6fA6Ci1iF4IamCzQ0/uNnpxnIclYmYG5AFWrRkcOkAnLHjd/vqy
         Mcdn2eKQAInDLwpqe75zAK61fm38lA/lxdqhAs+2YU62slYQCd+S5lA5aRB4Pu5D0veQ
         HK2EIx904AUaGAsr9u7KF3XoDqq/Q8OjWIIr/mDA5J5RQvZL5XR5AicXDMOLv6Rqbi+s
         YYToO+xsoqGmOdGE2a2ATIiv0szAYche33p0jYKgNw5VzNttaGjutMMR3ajz/XpVY9Tn
         zUSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735971560; x=1736576360;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kJy+8+fVEm6YK8nt+UA91yeH//nrEvU1SS58aGvv8Tc=;
        b=rvBMNuSf/juDRb4QlOfrsJrr/DCCyeQqEarZ0bjLZgAWosifeuWBc/38qKUOV4GlNG
         jLRmP9sjwYoSiatPMzER64IpuOi1ozEqk3dWm2QZsu5WeCPCw8q1zMLr9JYQsoI/cEz3
         KTCZobWXYc1we1d2ocui6tbHPHtWQf1jhuydHcX/f0BaDjTDgjnG00630x5aoe2UhYdU
         noedPhTdUimMUYokU3qwRwt3P7IeqxRVV6NrrW9i3Uyij0N4EGvMHdYUTcFhteYL/F4x
         fr1e1397eh4Xi4lGTkYvBKAnJpUwVXLo8BcuSkxaBpYgsG03E42Zh+zph5kOYrmF+L02
         QHig==
X-Forwarded-Encrypted: i=1; AJvYcCX3iXfWQTgUPvZFKXVql6cMLW4y9LJIGoyYsqreR/CnZlBH3o00bpYhAxLsjR3AhY5nhqmyPei6As4k@vger.kernel.org
X-Gm-Message-State: AOJu0YycivEEKf1WIopeE3wDOnjP4cgYZkInjQApk898yfJ5mp9AWX9v
	evkGaJrgj9oRydNNA7Q7uLIHgux1ATiKkZxDK48lmRP5d66JZoSbBF3qX0PL6Co=
X-Gm-Gg: ASbGncssntluDAMH2s7TdM3NvOO9td553dnfLcpomumQbC8nrme6tBewGKWMvj4XGwp
	VyVL82hQhIs3BjPuWINGf4sIFLvj3NWk+Zx5T5+iICeZsjoKaq9w33TRr+ZMwNy2h7dBj3XEYWB
	3pAro3PPSLSgo/dlIb79q+CAh1poOLJwnlYV+DQO75eSEccaxaxwv0nfTFcUzwwcXVaVqgvM4t5
	iRyX8Bjklg0483SY0ePXRFHubZZyXn0G+Jbx5qc5EjdzNIrpVF7G0VzK2hadQf/ouoGz1LJZn/s
	Zb9ddT8oqhbxLdzn4azButhG
X-Google-Smtp-Source: AGHT+IH3sol5DV7n88ijdEUu+LBspMnlZCmDlHIC8zxIonFxNY89jIFJBHXeLWxE2B6+6Zut7o3iwg==
X-Received: by 2002:a05:6512:1592:b0:542:28e3:2156 with SMTP id 2adb3069b0e04-5422953feccmr13301165e87.25.1735971559540;
        Fri, 03 Jan 2025 22:19:19 -0800 (PST)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00--782.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::782])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223832c1bsm4261655e87.280.2025.01.03.22.19.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 22:19:18 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 04 Jan 2025 08:19:12 +0200
Subject: [PATCH v3 1/5] nvmem: core: fix bit offsets of more than one byte
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250104-sar2130p-nvmem-v3-1-a94e0b7de2fa@linaro.org>
References: <20250104-sar2130p-nvmem-v3-0-a94e0b7de2fa@linaro.org>
In-Reply-To: <20250104-sar2130p-nvmem-v3-0-a94e0b7de2fa@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2179;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=DP/l7Yoeg48ucLXReCMjDDAHTnXmcOLfOXPpLm9/mx4=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBneNLgMTBJCitDFHxA6inhG5B42VbEEbUZNj++6
 XYj8kLDWTGJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZ3jS4AAKCRAU23LtvoBl
 uIo6D/9n2sALObvT7aq5loDvxyEKB1E+9JUzHPf84QwE7EUDospcOxH+mE66SauSJcpDHdkBg8P
 B3GZ8errhtXYeYYn+Lq8hgmyJ1f8k9Q508hLG73C8DU3n7/ebN81hbhdmeJhVAMIXcuF3NUczt9
 5MeKcl7502oWP6+5zzaT2I6W2ylAM4rV4Pow6yGMWn94dxLVURxFudsxwMxt4Cz96oRhniBxXm1
 q4y+WHVpPUJTwU2DMNmG2qBM2nBtApAqqhZX4JwNM4JWZASDSa2RerCTB0RZwPRX7j3JRKouHkR
 okOiCOJp7u6nys6oZKgYDKsTd1LJ46Oa+OIMlrlyINlLSUKiMC0TLBthoi0MIRkdsR4D2C744qT
 Nwe9s/9T4RM/5gM4q5yMkNz+NvGxq37a2txA5TKhookgEYn8kIMCvz/P/tj8xMKg34NFudHGeSm
 25M6NZ2wJ/5LmosQx//Ch4FqyUxaxuKx3BcQ+2ZMvQcbho30ACLRgQ0/qoQQTcBEUKZ85lULuEY
 P4TORncL+erYKeBex1iNB37Cdjo0FjcRLJ0LvTdwm15kZi1RhQTXEwNIl5WT404VmEKGHM+8ikQ
 98oTKw+8DkOcL7epaD30hqpf9o+WU6C5e2t1dTwewA0k2HgrUcp+VCVHOzLnsgogqOvFdQc1Ivt
 xlh8b4m1DDTj9FA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

If the NVMEM specifies a stride to access data, reading particular cell
might require bit offset that is bigger than one byte. Rework NVMEM core
code to support bit offsets of more than 8 bits.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/nvmem/core.c | 24 +++++++++++++++++-------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index d6494dfc20a7324bde6415776dcabbb0bfdd334b..c0af43a37195c3869507a203b370615309aeee67 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -834,7 +834,9 @@ static int nvmem_add_cells_from_dt(struct nvmem_device *nvmem, struct device_nod
 		if (addr && len == (2 * sizeof(u32))) {
 			info.bit_offset = be32_to_cpup(addr++);
 			info.nbits = be32_to_cpup(addr);
-			if (info.bit_offset >= BITS_PER_BYTE || info.nbits < 1) {
+			if (info.bit_offset >= BITS_PER_BYTE * info.bytes ||
+			    info.nbits < 1 ||
+			    info.bit_offset + info.nbits >= BITS_PER_BYTE * info.bytes) {
 				dev_err(dev, "nvmem: invalid bits on %pOF\n", child);
 				of_node_put(child);
 				return -EINVAL;
@@ -1627,21 +1629,29 @@ EXPORT_SYMBOL_GPL(nvmem_cell_put);
 static void nvmem_shift_read_buffer_in_place(struct nvmem_cell_entry *cell, void *buf)
 {
 	u8 *p, *b;
-	int i, extra, bit_offset = cell->bit_offset;
+	int i, extra, bytes_offset;
+	int bit_offset = cell->bit_offset;
 
 	p = b = buf;
-	if (bit_offset) {
+
+	bytes_offset = bit_offset / BITS_PER_BYTE;
+	b += bytes_offset;
+	bit_offset %= BITS_PER_BYTE;
+
+	if (bit_offset % BITS_PER_BYTE) {
 		/* First shift */
-		*b++ >>= bit_offset;
+		*p = *b++ >> bit_offset;
 
 		/* setup rest of the bytes if any */
 		for (i = 1; i < cell->bytes; i++) {
 			/* Get bits from next byte and shift them towards msb */
-			*p |= *b << (BITS_PER_BYTE - bit_offset);
+			*p++ |= *b << (BITS_PER_BYTE - bit_offset);
 
-			p = b;
-			*b++ >>= bit_offset;
+			*p = *b++ >> bit_offset;
 		}
+	} else if (p != b) {
+		memmove(p, b, cell->bytes - bytes_offset);
+		p += cell->bytes - 1;
 	} else {
 		/* point to the msb */
 		p += cell->bytes - 1;

-- 
2.39.5


