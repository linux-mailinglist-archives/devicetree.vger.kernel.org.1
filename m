Return-Path: <devicetree+bounces-55422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D91B895280
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 14:08:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 663801C21871
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 12:08:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDCB27E0F4;
	Tue,  2 Apr 2024 12:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FhzEDAYD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D8678283
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 12:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712059684; cv=none; b=poYyPGpy+owZn0EvZpCyv82joRHCbEDoCALEvYQTIceY85fMypC5gFRbsrpyBvRx0rOR9oGGU8qMZNCnx4FXm0Ci0u05VewZDsXl1scIxv8pVVSaqsAQ5T6DjyJTUmHpsRTgkjADbVLepWVBokS458yfNADYhd+mMjyAwQOSxpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712059684; c=relaxed/simple;
	bh=itu5VhzRY7+Uox8ZWhW8LPb8PjDEzOtU9DaWueGgr6c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MurHjDpuRKlGYJptuix78p2oc1ISCWfw7OnG6n6J7ds3mX60BNy591WObBb//deIjezBLR4zciPRtLI7h1NwHpx6PsrxkG77wlkI6wbYMLxNVKJBat7ZIfCp/yFzRu3ARUgLmFTvirbEBlzpMmDdFrgrWr0pjet5lYNr8lzDbhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FhzEDAYD; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a46ea03c2a5so923758166b.1
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 05:08:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712059681; x=1712664481; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Opu1+fgnwfiqRAjomE33LCew5lDraMk9w2Ix7h0wG/Q=;
        b=FhzEDAYDEtuODeHOwOybSx9TaRHqSwRwUM7VqtwFlmN9B6oL6ln3/1t0ooykinF4Qp
         U9Z9yhW8gXsSlw4Qv2s2v4UgbqdW1hpBSBrlHO79KUPkXVaRIcFKbwWcyTi72G15sQ4r
         Xfg7j+6YpJKE404bXjtqqlmcu92eDfwncaRIoYb2eczRw0/1kW1X9Hk0lrea37MLaLBq
         f0hCD44DmAuw+dCK0zUxOmCyLL+jlFN/HuDvTQH04Ne4omDw8Bgb6Dg15Us8THAV6Dsp
         iRzRiEgJQZGTfHQA+zgbmc0AVE+zEWyqigcSgAtYF/XJUNUblGZODjhwQRjBA5oXfusH
         8ONA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712059681; x=1712664481;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Opu1+fgnwfiqRAjomE33LCew5lDraMk9w2Ix7h0wG/Q=;
        b=EDgxc6ZdPa1861YY2sTqmz7XxM5ZTPFrv0EO+9pVumc6qP7z5oojX1JOYVCpjed6bx
         3IeVPyGzTCvW09rKNiw8Esnh+i0Pz0GNPH2Oo3DROl6bCyRoj2QgWXVcekhmbEgYZRiE
         aiKJGcHCNYRSONp8Kg3CyYi0OZfWgvwLqAVJ8KitKIzcidgZCExwayU/Qbi8Ye9c4m/y
         X3yaH/OkqtXidCsMq83vzlJLojZyx6HbaWrDi9Y5lOIKf2vgde8cCCIeDr17KrAn1KSz
         Q6C3jLwYAE96YkN/dXsrhFw3qLClKn8x8+A9EocgMhx1XUC3n543LFqvhV0hdcOZ8j2q
         erTg==
X-Forwarded-Encrypted: i=1; AJvYcCUSCS/AVfCDWWTWpMLi+wBLfXXsXqCkVh1Pqt7700erRILi9BioI23erM9GujOBQ/w9aTLR2W0SlF2MqHwjz0/01i5O3BFa1cYUIQ==
X-Gm-Message-State: AOJu0Yzehka2OmcE/BcKixG8L9fAfLN0Lp3KsJ4+LU3wtD643HiybLYw
	lo1UyjeXyh3sZtbNFfronsMv/wpCZ29Gz3WzNGor+25acr5Nun5nx35dDbOF540=
X-Google-Smtp-Source: AGHT+IEh9Scg5RaWBPAQy9YV3zDNFVbPkDw+tNiOCwdJ9q1APPFj3+6+kqkTVUmlVfH7Rp7t9wFBgQ==
X-Received: by 2002:a17:907:7e9b:b0:a47:3afd:4739 with SMTP id qb27-20020a1709077e9b00b00a473afd4739mr15686749ejc.6.1712059681089;
        Tue, 02 Apr 2024 05:08:01 -0700 (PDT)
Received: from [127.0.1.1] ([79.114.172.194])
        by smtp.gmail.com with ESMTPSA id l13-20020a1709065a8d00b00a4df251a601sm6519384ejq.77.2024.04.02.05.07.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 05:08:00 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 02 Apr 2024 15:07:32 +0300
Subject: [PATCH v8 3/7] spmi: pmic-arb: Fix some compile warnings about
 members not being described
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240402-spmi-multi-master-support-v8-3-ce6f2d14a058@linaro.org>
References: <20240402-spmi-multi-master-support-v8-0-ce6f2d14a058@linaro.org>
In-Reply-To: <20240402-spmi-multi-master-support-v8-0-ce6f2d14a058@linaro.org>
To: Stephen Boyd <sboyd@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2422; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=itu5VhzRY7+Uox8ZWhW8LPb8PjDEzOtU9DaWueGgr6c=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmC/USt2OJhH/CwprexawX8WQiCTrUZ/JwoYHDt
 lhJSzZcFsmJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZgv1EgAKCRAbX0TJAJUV
 VsBnEAC8IyeAcovEWVj5iC/wADmCZjSgb9pbAnqUPt70WMLSgJ4HRbEjWF36d6LGFaSjETGMI4A
 xOyjGogFEFo8l0vmThd4x4AKRTQTnx0bFyQImr/uQQa9gKWsEaMkmVPbSkt1B1tzmMPaiByOwfv
 HPxdZCWtH+V8te9gxZ0SSDwF+bSceX1ODUN1TRZWPvsubYKXQ5DqY2A8yTe19sHk8gPTgT/BsBm
 MM9IpNRw86t99t/5tLYjYCBb7t/tX2FcM7HHFb8y2VuoyrPJNeVhCefulUftkPcrRzeWK/zAhuR
 yJT8qFV5r1RR/cu1BS772cNY/BgARjlm1ro8D5DxsGx1rKqbTe3K3vcfmJ5p15Ab5kg+AavCX5z
 KNngO2/LBqk/8fyHfQ7CCUklV4BlBWFxgxBYYnUJvdLYNQ7k6hrZWjozlfNSJxh1wlSOmCAFkD3
 JvcdP4Sil7lGTrtAgtr0F8mIz4d1f7i6By4DYXs03w/CADTsv1657RT9Dn0M9YGRxTYYFA82DmC
 tgRudjlugcxgFsepVgqEAzHVTrBTtP4BwdolnYLfU4Tgg7FCbmsfSIRYG8c8YQnoj12617TH7Y8
 uHJTvirYpo6xbCLiirhTAH6xA3F/HACb6Fnr0O5Uo3bosdFrkRb2VQDMOmL7+qt5v2CRySQrcUd
 ZNnPnz120EcwJKA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Fix the following compile warnings:

 warning: Function parameter or struct member 'core' not described in 'spmi_pmic_arb'
 warning: Function parameter or struct member 'core_size' not described in 'spmi_pmic_arb'
 warning: Function parameter or struct member 'mapping_table_valid' not described in 'spmi_pmic_arb'
 warning: Function parameter or struct member 'pmic_arb' not described in 'pmic_arb_read_data'
 warning: Function parameter or struct member 'pmic_arb' not described in 'pmic_arb_write_data'

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/spmi/spmi-pmic-arb.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/spmi/spmi-pmic-arb.c b/drivers/spmi/spmi-pmic-arb.c
index 9ed1180fe31f..704fd4506971 100644
--- a/drivers/spmi/spmi-pmic-arb.c
+++ b/drivers/spmi/spmi-pmic-arb.c
@@ -132,6 +132,8 @@ struct apid_data {
  * @wr_base:		on v1 "core", on v2 "chnls"    register base off DT.
  * @intr:		address of the SPMI interrupt control registers.
  * @cnfg:		address of the PMIC Arbiter configuration registers.
+ * @core:		core register base for v2 and above only (see above)
+ * @core_size:		core register base size
  * @lock:		lock to synchronize accesses.
  * @channel:		execution environment channel to use for accesses.
  * @irq:		PMIC ARB interrupt.
@@ -144,6 +146,7 @@ struct apid_data {
  * @apid_count:		on v5 and v7: number of APIDs associated with the
  *			particular SPMI bus instance
  * @mapping_table:	in-memory copy of PPID -> APID mapping table.
+ * @mapping_table_valid:bitmap containing valid-only periphs
  * @domain:		irq domain object for PMIC IRQ domain
  * @spmic:		SPMI controller object
  * @ver_ops:		version dependent operations.
@@ -232,6 +235,7 @@ static inline void pmic_arb_set_rd_cmd(struct spmi_pmic_arb *pmic_arb,
 
 /**
  * pmic_arb_read_data: reads pmic-arb's register and copy 1..4 bytes to buf
+ * @pmic_arb:	the SPMI PMIC arbiter
  * @bc:		byte count -1. range: 0..3
  * @reg:	register's address
  * @buf:	output parameter, length must be bc + 1
@@ -246,6 +250,7 @@ pmic_arb_read_data(struct spmi_pmic_arb *pmic_arb, u8 *buf, u32 reg, u8 bc)
 
 /**
  * pmic_arb_write_data: write 1..4 bytes from buf to pmic-arb's register
+ * @pmic_arb:	the SPMI PMIC arbiter
  * @bc:		byte-count -1. range: 0..3.
  * @reg:	register's address.
  * @buf:	buffer to write. length must be bc + 1.

-- 
2.34.1


