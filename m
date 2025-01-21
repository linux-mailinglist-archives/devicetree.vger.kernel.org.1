Return-Path: <devicetree+bounces-139958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 58181A17A14
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 10:23:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E472B1887A48
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 09:23:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEF3F1BEF6E;
	Tue, 21 Jan 2025 09:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b="18irb54g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198981ADFE0
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 09:23:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737451391; cv=none; b=GkxpuG5IFTA0hkcPQvCu5Mlc88H2TXTZLaOgsaGMdT1EhTZ9NBtWkqnmr/MoGcz7MayPgU0dyJFDDfrbDhCzot/07HLOQ3As0W3ccF1hwpkxk+8YHUeaH7nQh03XZcnaIB5KsJm2jGrlttv4jn7baUoCNtQ909jvMt7Sj7w0KZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737451391; c=relaxed/simple;
	bh=pfo2r67TxQN5uDeehP7wsRisRzB+loZl+e3TFm/JDAA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=r94xWO7wjOyBo8mo+zB4zzyOIkxQHl2xUIXav0DnydXA4szehPkOkozEaeKigY7GRZ9n7r+8is6/RGiyw8bqUKG0v5zT+FLunKSD6+BMBXoPQtTSv45fAP9SSBMel956IbDbKl5X5N5XFhyDz227GpRggvrH6iGNzt5Go1hHWGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com; spf=pass smtp.mailfrom=thaumatec.com; dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b=18irb54g; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thaumatec.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5d982de9547so10563798a12.2
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 01:23:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1737451387; x=1738056187; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kYGUvnwRlJvHmfuOgllitczl0CMCq378Nwa9ArxRXpw=;
        b=18irb54gMoXg5wPJ2vy61A2dz9dZK8+qJdQBfl6+XnRVgLmzodx3/8ehrvd+jGeoP7
         7mjihguerRaCKE+79i/1T5lv6bxqtFH87wxk/iuI4nDo0ZcvGfYvgZrzJqy5nKxI0dv7
         S3RaO1UmLwyx7zTNh1tCyetTzv5QuFb4xQkHiFVMYA8qH+0I5Hz2JnzPNSjqifkq+Z1a
         Vj/Wi+vbroRhFMpJxWfd96SUmUBbihsv+ej4mAFNgJtgV03wALMjfNorbzlYz3OY443s
         w0BoAIAJ5dKnGTcuvlShfE6nIuRdnYhAs+WFGWkm0k0+NSfnUjJeeoRB+crWAANCXwAd
         nxUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737451387; x=1738056187;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kYGUvnwRlJvHmfuOgllitczl0CMCq378Nwa9ArxRXpw=;
        b=maJGRnL3DR7hJX73fzsla1BoeuIA93ACnZqM08AEKvOzJDPe4Ws279fMGJZBVZkW7E
         6RgVGclFUEFfznqIkTtIgrBfo0s7C94ZhbBajsBWOZVjwWVKuh+SWbKPM0BGbRXSX5OZ
         HGbMRAXZyT2j4CC+J+Cdq2wNb3qSVkbz9ejHAvMFP9m4HJAhAJ3afA9TJwmkP1cvkjt5
         qwl55Kunoo2R908FgJRSLRLvoAO5HU6carly2CCo5E7S3ML3I+kX22YVv5WBCsSdCbz0
         byHl+GBFVV7+yrc0aDfZgz8Kjfd/CGi+rzhY00cIulhgOhIWI3rlp8ywcviZTa0crcu2
         CWrw==
X-Forwarded-Encrypted: i=1; AJvYcCVNv3NprvUSRuDqISuqCOSAYIj77gg8vh5PtdrlbOBJSHHisT/8b9QWOerVTnuSjjLHjTnCbcmnV5pE@vger.kernel.org
X-Gm-Message-State: AOJu0YyyO7gawMMi+YZyLooWG/OGZUokuJPR1Ads8GuGJIzQawrc2IsS
	GwR70kMd2aQ7wwxh0P267qqlqOb2IGYJCF3mLJdOC5T3oyaSjclV3mY2AEG88cY=
X-Gm-Gg: ASbGncvuqVxtD5n597BBK3HClgT3WLYmDdpzz8rfiQb72d50FVSojqhQrEluzbmKV0I
	tiprfiT23GTG1US9/sfP6p66RCO5je6CQFBgXio7eN6DldhMrLAYnv+vGZm0b+SN1oz3UvyRcn2
	jsO9QOnB3XoTf0o5rgie+augUWiZryjbv0JPt5IsGISgSItLzvr0TBIsrWqdsnvVVgfPSK1OE6c
	dH/kN4p2Zx8HJkYEAQlfGIpwPdYYg/ty4kD67RrgvAmUtJJed54XCn57VvQJvTIKtLXtCd102Up
	WV1k4aPZDidQhIHhAAc+JALkwA==
X-Google-Smtp-Source: AGHT+IENVL6ioAEkP6ftEz8Di5TBDA/bVHDPQzMyul5XEMABgKbzLzWD5IBD9ujI4KOZy/9m6JqVrQ==
X-Received: by 2002:a05:6402:3590:b0:5d9:a91:6a47 with SMTP id 4fb4d7f45d1cf-5db7d2f577cmr17562098a12.13.1737451387263;
        Tue, 21 Jan 2025 01:23:07 -0800 (PST)
Received: from lczechowski-Latitude-5440.. ([78.9.4.190])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5db8942cad4sm5681726a12.60.2025.01.21.01.23.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 01:23:07 -0800 (PST)
From: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
To: linux-arm-kernel@lists.infradead.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: quentin.schulz@cherry.de,
	Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Subject: [PATCH 0/2] Disable DMA on secondary UART on PX30 Ringneck
Date: Tue, 21 Jan 2025 10:22:53 +0100
Message-ID: <20250121092255.3108495-1-lukasz.czechowski@thaumatec.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The PX30-uQ7 (Ringneck) SoM has two external UARTs, connected to
uart0 and uart5 controllers on the PX30 SoC. The uart5 does not
expose RTS/CTS pins on the Q7 connector, as they are used for
different purposes. It was observed that UART controllers without
hardware flow controller behave unstable if the DMA is enabled.
This patch series moves the pinctrl-0 to SoM dtsi file and uses
/delete-property/ to remove DMA from this UART controller.

Lukasz Czechowski (2):
  arm64: dts: rockchip: Move uart5 pin configuration to SoM dtsi
  arm64: dts: rockchip: Disable DMA for uart5 on px30-ringneck

 arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts | 1 -
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi       | 6 ++++++
 2 files changed, 6 insertions(+), 1 deletion(-)

-- 
2.43.0


