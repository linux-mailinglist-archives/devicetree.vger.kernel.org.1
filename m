Return-Path: <devicetree+bounces-244953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F16CAA76D
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 14:47:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 769C13091918
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 13:45:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B4092FDC59;
	Sat,  6 Dec 2025 13:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="LHjI9vNd";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="B91envaQ"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C552FDC4E
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 13:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765028749; cv=none; b=T/nuSAwnE2z+N/Cn35PHJnCQt+nDyfgAM/gF/ETKZZXgQ733u29CcgfkovA4hqgPObJ1wbQZ1L/Ybgi9r8NlZifHm4fMRYbYnEJnFVGvrEMMYaqIct9V9SAD7+2cF+/mDespUPZvr3+xpVwGeOuJHk1ea5MQvI8GiIEaYqCN5y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765028749; c=relaxed/simple;
	bh=Ixfrv34AWUu9/W2tpUofqbMTjZBj1HVmvhbEeYoVzaM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TdQ8jRvg+6ggB+I9G9i4uKRAgiW9m9+hOYpRXfcd0e+HvqbiFaLF8D9WUJ2jKwDWEkmzHykk+ycfuFVqEGFaSGPCwZ36stAACzu1kNuhTyG40LtmII/ibmjL5n3jE3YLePIo/qmLgU/YJhuAk32LBGic1jio4vxb6yk8nzW+Mts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=LHjI9vNd; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=B91envaQ; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765028746;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=9piyTpQ6TT5OHkiv6/B5x9F9Sfk8WGsncGds5Tl6KD8=;
	b=LHjI9vNdCduYdGL2EjvxP11QIg0x7mKDrRzfxbZqKkvWZg7tCKcFdOi7JwMOiSlfmTivke
	8gtH//8FXmsT8EgTqt78DSKSihTO+2q19iAnzTGSQ1Feb8DM8Gqv3cwlcIaEzq1haZwpVb
	oB84p8FcJF632lpP1Hjl0wokSbTTQIc=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-180-0d_UBuPKPOSjC82RYwMS9w-1; Sat, 06 Dec 2025 08:45:40 -0500
X-MC-Unique: 0d_UBuPKPOSjC82RYwMS9w-1
X-Mimecast-MFC-AGG-ID: 0d_UBuPKPOSjC82RYwMS9w_1765028739
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-42b2ffbba05so1466682f8f.0
        for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 05:45:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1765028739; x=1765633539; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9piyTpQ6TT5OHkiv6/B5x9F9Sfk8WGsncGds5Tl6KD8=;
        b=B91envaQXiEfiIZc/FdxLVcvuf1WfcR/kI/SFxSstUYabtFGA17IYgZ2Nj5TTQqeJB
         NFER9d+aXIplzZPeMpu5c5Lt0qoCQCFOgZ192lwybXsvyUIfFJA4dRMtFLwY0rk0z762
         8Hvf4u9JeL4i1pBGBTzf3un06d8oGPOSN8FusMM05z3f54TDLWaxAs5RKTxVaQ1fTkNg
         X8i7i5OeF5ajQo2+3k8knG+zF1k5FNSoigqUy3TH/EiVMi4X6hWtXxmKWtpGQ8Wv2OuO
         mcCWy/2JB1FUaHEltelpDkz/XmcQW9xML27MrIeU2ROvKk5wwOe7MAtNltQLtxZZ2KNb
         D+ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765028739; x=1765633539;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9piyTpQ6TT5OHkiv6/B5x9F9Sfk8WGsncGds5Tl6KD8=;
        b=Ny8n8FMmDa+BgiVwm2d9Cick79wxRsLTYnZ7iulUVORz9vRyTikbMuLjCRuqRGJFSt
         o9l+1oVxdhxIdJXhNagSQoaYU6peuYE/Pg41/IVUckgiQ53jtEPs+Blx2kPD5y3YIgjJ
         AJx9cSFt3VZRLqKsfUk7UcFbIv5AhBj3Xce6mlFED+XzqT+BNKszmUnOIMPyTX3azCE/
         YgyL7M9oN/b6r7VJXO0K1D2TVJ10tgLY0HRmrivLb3ZC0GeeHhOKmDu+BTE7qMeFHUBN
         H4YWRQvH6PQja9aXsnXZly+hgHoVvkYl9IDKXtR6K1nP58kFCRcA/O8JGVW6AYZtalcR
         SiZA==
X-Forwarded-Encrypted: i=1; AJvYcCWxODgBJKyNg6c8qwIgzI3sMC6nOV+zUefvaA24M7IUGUuHNs9ysQkYCcM8iRtnpzYHVYAEfT7CuqGI@vger.kernel.org
X-Gm-Message-State: AOJu0YzdxNcZJnxq6Hy2u9NDMS+vPY7r7pqu8BBz5u18r+UVsLnoJVgz
	Y1guK1dPvffFH/Res1jk0rqKGSa1ic0Hqv8Mpn0b3XXIKoQ9Jmb+qV9Lb6O5kcBnsMBMSetki1w
	GtF5lxGmwbm5FQHYKdRc3pCLgsPC7/QkVQ4R72ZIysFilt3F+xV3o3NHmyyYIa3c=
X-Gm-Gg: ASbGncv5leZKHstiiIeIbWLnKXhetjxwm6EmQnEIfraYEpklg8FY40dJHc+8xhAlLU9
	tE8oe9hmoC+3dmMiDJ4PPDwrCiLknceugmcgze/A7b07I+wXOPJq/Hqyd2rWQ0kaAaaaNFoMBdM
	wEyw659eDH6hCO1t1rWs2QQ+ae0nwFeeAIToDrqcc+AhMllVBpaxrWMmYIKi0kwjWSeG1Zq//ti
	yFmVPtqbQ7TruXzl/DnXj+2Ku06Vg5qYj+ZPOkjH4XYQdnJK+MeRBQAOsGPZjqt9qDIapAiPoLk
	4/UGVF9aj7Z2gjSF57e4PzXVzr5qDXh+NmDhuh3Af+gVKhkkk1MLOOrzAF0RsAYT1GrO2lMWxni
	7uvWqFBRdqsRT92ekqhNovHGNv7slrRN7+0o=
X-Received: by 2002:a05:600c:524a:b0:477:b734:8c22 with SMTP id 5b1f17b1804b1-47939dfb06cmr22732285e9.8.1765028738876;
        Sat, 06 Dec 2025 05:45:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFRf68G+11uMBoOmMOztce9Dtg+7RUcAPRCNepMNXIDMmbVwb5H+ngp0wvK48xMgJehotiAqQ==
X-Received: by 2002:a05:600c:524a:b0:477:b734:8c22 with SMTP id 5b1f17b1804b1-47939dfb06cmr22732135e9.8.1765028738491;
        Sat, 06 Dec 2025 05:45:38 -0800 (PST)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d330b20sm14457955f8f.29.2025.12.06.05.45.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Dec 2025 05:45:37 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Alex Elder <elder@riscstar.com>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <pjw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Yixun Lan <dlan@gentoo.org>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev
Subject: [PATCH 0/3] riscv: dts: spacemit: Add PMIC and regulators constraints for Milk-V Jupiter
Date: Sat,  6 Dec 2025 14:44:52 +0100
Message-ID: <20251206134532.1741648-1-javierm@redhat.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

This patch series enables the i2c8 adapter, the PMIC, and voltage regulators
for the Milk-V Jupiter board.

The power management hardware design on the Milk-V Jupiter is identical to the
Banana Pi BPI-F3, so the DT Nodes were copied from the k1-bananapi-f3.dts file.

I have verified the I2C address and regulator constraints against the vendor's
downstream DTS to ensure accuracy. I have also dumped the regulator_summary
debugfs entry to check that the regulators and constraints are registered:

$ cat /sys/kernel/debug/regulator/regulator_summary
 regulator                      use open bypass  opmode voltage current     min     max
---------------------------------------------------------------------------------------
 regulator-dummy                  1    0      0 unknown     0mV     0mA     0mV     0mV
 dc_in_12v                        2    1      0 unknown 12000mV     0mA 12000mV 12000mV
    vcc_4v                        7   10      0 unknown  4000mV     0mA  4000mV  4000mV
       buck1                      1    0      0 unknown  1050mV     0mA   500mV  3425mV
       buck2                      1    0      0 unknown   900mV     0mA   500mV  3425mV
       buck3                      1    0      0 unknown  1800mV     0mA   500mV  1800mV
       buck4                      1    0      0 unknown  3300mV     0mA   500mV  3300mV
       buck5                      3    7      0 unknown  2100mV     0mA   500mV  3425mV
          dldo1                   0    0      0 unknown  1200mV     0mA   500mV  3125mV
          dldo2                   0    0      0 unknown   500mV     0mA   500mV  3125mV
          dldo3                   0    0      0 unknown   500mV     0mA   500mV  3125mV
          dldo4                   1    0      0 unknown  1800mV     0mA   500mV  3125mV
          dldo5                   0    0      0 unknown   500mV     0mA   500mV  3125mV
          dldo6                   1    0      0 unknown  1800mV     0mA   500mV  3125mV
          dldo7                   0    0      0 unknown   500mV     0mA   500mV  3125mV
       buck6                      1    0      0 unknown  1100mV     0mA   500mV  3425mV
       aldo1                      0    0      0 unknown  1800mV     0mA   500mV  3125mV
       aldo2                      0    0      0 unknown   500mV     0mA   500mV  3125mV
       aldo3                      0    0      0 unknown   500mV     0mA   500mV  3125mV
       aldo4                      0    0      0 unknown   500mV     0mA   500mV  3125mV

Best regards,
Javier


Javier Martinez Canillas (3):
  riscv: dts: spacemit: Enable i2c8 adapter for Milk-V Jupiter
  riscv: dts: spacemit: Define fixed regulators for Milk-V Jupiter
  riscv: dts: spacemit: Define the P1 PMIC regulators for Milk-V Jupiter

 .../boot/dts/spacemit/k1-milkv-jupiter.dts    | 135 ++++++++++++++++++
 1 file changed, 135 insertions(+)

-- 
2.52.0

base-commit: bb3a1f127972ea262f98eee55068de1e54ab8d57
branch: milkv-jupiter-pmic


