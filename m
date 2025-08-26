Return-Path: <devicetree+bounces-209417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D66B3709E
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 18:38:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B0F517226E
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 16:38:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8DB6350D4F;
	Tue, 26 Aug 2025 16:38:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BEZZsmK8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 753832D191C
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 16:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756226291; cv=none; b=lIN5o4yhGb+gMxGoBFOgQ976SUrMPs5KoKEwDEa6J83rrNy6Gn6Kvhcw2/be9IINsFRzTYPxfr+89cTf+imAj3jeh6O1MD96zF0/+VKGzLF77Mni+ouWI6KQgnnLo9xAp7+PAq6fsMJAgleub4Ra7ugZgC0cXFrx0n6G1nzuwBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756226291; c=relaxed/simple;
	bh=gHvd8MAADs7spRtEPHQ0L899w8R+izdWV55pdtIsLMA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GKImk8T38xhsR8j+lLbYWUxN3WnDw1Mr6CzQuwPbc9RUBRxy/LDlDjGKwYqRe2QXLG68umBmr9DmyvFr3ehAUrSet902lSN2E6SlG6BCzDRIEXOVw3boxViUb282WMm7P6OyO9F141R3PgciKjbdX614e5bBncz3E95Za9Iyd5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BEZZsmK8; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3c51f015a1cso2906335f8f.1
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 09:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756226287; x=1756831087; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lYW/igevcuU0ZnQ2gyeBbfQRsoP09TrgjejXo8IbBUo=;
        b=BEZZsmK8Xs9e2pxzAZTkKFIhudXo7WsgqJ+2iSkhcexrCaDYyzUDubWQWZCh7tgMeL
         6X0hPm39F0IG6+k/xIAPrPHn9F87qqWg3329szx93ClvgztgVz5b7HUK/1Jmv9RVhe2u
         Fa/i8JzwYyNjmG3ejQmgTkBtnHJnkXL2gkIHCpI7CZg9k9ziTHQ3WB0ch6wYyVfAnmNd
         DSVYkRsFsscxfpf/tsVvQiZzPdEnHHZge4ujuhCGjYwf8syRLfekMqQqYZedrrvdjxJW
         iiIstxZDk1PCQJCwN1hNJtgoLlHcwW1RzpO3amgcd09a7iEziEjAvQKVEeEkoVMu4qKy
         jKnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756226287; x=1756831087;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lYW/igevcuU0ZnQ2gyeBbfQRsoP09TrgjejXo8IbBUo=;
        b=al6q6/ixWoOyLQpSvwyej8E883P1EJfm0GrojAV1iLBehIMg5JHz+th69FgYvs4x8l
         51h2pazzJzb93NYCprDPCxtyXNRxpUu0KK/AWiaZ+VBOlRiArikecJnPcfFzWznSRwVZ
         6kNyQP32ivm1xvqef3naRXRy0VE272nBj+CWN9a8cEd900M7CQ5dXxA/z+kFz7UHMKE2
         LYzmPL8xT4IJzYvkbiZLQmGbkn9/p5wGZHpVMEOrHd/cqv/viu90UbhpqUy+bHUpnI6/
         Rttd+MreX3QmZ0yY4JfT6APsMwuloWzoFxkbGVqde4z/Rv0ebrjI6kbyk58luWZvHhrd
         MmtQ==
X-Forwarded-Encrypted: i=1; AJvYcCX7CiWuylPChBNFZRdmn7bMr3UdBWL11sap37a5YzvLy7PWE+HsPDBHHTY3KbKpi2qidtp4C4C8lLKp@vger.kernel.org
X-Gm-Message-State: AOJu0YwofUL2I5sX9c4NkNShMBCagW0tfO7F7fqxJOWT9zxZDYFocNA/
	3ubckB+DS7yfLBOB6gf2iHXqiGNxLxtQcxBrr6EE/fyzt6VCktEq3Gmj8xQ1k1iZbm4=
X-Gm-Gg: ASbGncvICnynraOoHsNY2dndYh3x6Asr2UpL+JyLh8z1/uZz54wD6VJ04XNYi4c6oBT
	UARnv87bNit6wI+8AkyMSC+ioRH1Oa5uQx/aFC0A0+klckYt5kV0IDCXsAptMw16K+DgcwCNcMq
	SnaSDLuXg+geTIza8ZVpGGHWE9L3Phy0PVtp+V0/+3w69aS7PyY6P5rk8YjbWlbh16Fzo0UyXu3
	sg4wfih6p1usyavEqFgDtlTGlYblV9yToMcJg1m56NPfGS1g0kZg3qtwVHwxvEmeoYWcbYQcQrC
	By11tUsNz6MRtfv71yN3halECxD2UO+iTLYTdZIx1XWXNvZqQWjvO/0NKvaMI9sX+U50c1lk4Vp
	Ax87EU49zyk91JyjD5fYA8Ye0HZ8=
X-Google-Smtp-Source: AGHT+IEyEnUK6FKvpfXfwfSfUWqvqFRO75JvQXAA1IB0bmF7D/CEKP0i0K4CCNMz5IW0ImoBpjqgxA==
X-Received: by 2002:a5d:5f44:0:b0:3a5:3a03:79c1 with SMTP id ffacd0b85a97d-3c5dcdfabccmr12151124f8f.48.1756226286737;
        Tue, 26 Aug 2025 09:38:06 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3ca6240b4f9sm7613811f8f.15.2025.08.26.09.38.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 09:38:06 -0700 (PDT)
Date: Tue, 26 Aug 2025 19:38:03 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Srinivas Kandagatla <srini@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ciprian Costea <ciprianmarian.costea@nxp.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	NXP S32 Linux Team <s32@nxp.com>, linaro-s32@linaro.org
Subject: [PATCH V2 1/3] dt-bindings: nvmem: Add the nxp,s32g-ocotp yaml file
Message-ID: <eabdbf4c0b74136b77e16eaca5d5e64d5c4a97a0.1756219848.git.dan.carpenter@linaro.org>
References: <cover.1756219848.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1756219848.git.dan.carpenter@linaro.org>

From: Ciprian Costea <ciprianmarian.costea@nxp.com>

Add bindings to expose the On Chip One-Time Programmable Controller
(OCOTP) for the NXP s32g chipset.  There are three versions of this
chip but they're compatible so we can fall back to the nxp,s32g2-ocotp
compatible.

Signed-off-by: Ciprian Costea <ciprianmarian.costea@nxp.com>
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
v2: dt_binding_check DT_SCHEMA_FILES=nxp,s32g-ocotp-nvmem.yaml is clean
    make CHECK_DTBS=y freescale/*.dtb is clean.  Particularly the
      freescale/s32g274a-evb.dtb file which Rob mentioned.
    remove bogus include file
    remove redundant "reg" description
    remove #address-cells and #size-cells since they are already in
    nvmem.yaml
    Fix email From header

 .../bindings/nvmem/nxp,s32g-ocotp-nvmem.yaml  | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/nvmem/nxp,s32g-ocotp-nvmem.yaml

diff --git a/Documentation/devicetree/bindings/nvmem/nxp,s32g-ocotp-nvmem.yaml b/Documentation/devicetree/bindings/nvmem/nxp,s32g-ocotp-nvmem.yaml
new file mode 100644
index 000000000000..01adc6093c68
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/nxp,s32g-ocotp-nvmem.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/nxp,s32g-ocotp-nvmem.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP S32G OCOTP NVMEM driver
+
+maintainers:
+  - Ciprian Costea <ciprianmarian.costea@nxp.com>
+
+description: |
+  The drivers provides an interface to access One Time
+  Programmable memory pages, such as TMU fuse values.
+
+allOf:
+  - $ref: nvmem.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - nxp,s32g2-ocotp
+      - items:
+          - enum:
+              - nxp,s32r45-ocotp
+              - nxp,s32g3-ocotp
+          - const: nxp,s32g2-ocotp
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    ocotp: nvmem@400a4000 {
+      compatible = "nxp,s32g2-ocotp";
+      reg = <0x400a4000 0x400>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+    };
-- 
2.47.2


