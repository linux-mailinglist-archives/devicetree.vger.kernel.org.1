Return-Path: <devicetree+bounces-40962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3CF851C40
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 18:58:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B32431C21AB1
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 17:58:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88D9E3F9D7;
	Mon, 12 Feb 2024 17:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="Zagc3QVo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC8434D5A1
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 17:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707760505; cv=none; b=nINVXnfF8rXNiyEe5FkZ1FbNdGOMMfPAuFOFTwNdapR5vU7E3Dtu0oK0kAalryKbCg1FBdqUzXg10zozGuaJvVcWijHtdD9q0MlWQe2Od1gEddrOUffIJxsvq9GI0hUnHsvSGP06IyMNNyhyrabPBOYD7iarytFEDTMlJIv9bRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707760505; c=relaxed/simple;
	bh=Yvxc4nHefH9DrCwhrSxYN5g6la56a6axoejMC2NxMZc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:Content-Type; b=OykFdJFNtoB5NgybS3CaA7/EhI6HhB9faxSnuHSa/Ji+Up9ha379rx/r88AJ7U1w8ENU5oQvyaXivpMtWbYrWLu2/spXNZkaBv0SZ+IQIDqHGpfyFeEorQsqJqK4KsKL39Hh7CATfYjTDPE61h/oCNIiLh6EvjW8HEt8mDrq8qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=Zagc3QVo; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-33b8806c22aso473278f8f.0
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 09:55:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1707760501; x=1708365301; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yRsulA9wKxUZFMueNGpnJFLKm00NQFXP6LrhnaRanY4=;
        b=Zagc3QVogBvB244P/ajUYJBqkzpYsJkCXDAQ4B5b4fy6Ik8y8qOOsbsQokOVF/ENeM
         oHS3B78JHXuJ1tvBMufV5Egjanso94EL0LONv6gfBDDsN7ES4I8J1B0uBMkCm3PbymLz
         /c7p5aY63mfAk7/R8hxE631CUGdAVTGmcWAZo+6TkroidQM49N05h0WKY12sZFAPTmsf
         UuLj69NzCxnQkXJkbNfeYi/5tRd2RNWZmvZoIt3FJuwhYp/MyFmPg24dJ/tAknOAX0hy
         PPvm/aGubup/ZvjuH9mc1uvKpoi3rid76c3RAb6Zzm9QtBmbMgPok6zk/3T+wFlCRdT9
         diVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707760501; x=1708365301;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yRsulA9wKxUZFMueNGpnJFLKm00NQFXP6LrhnaRanY4=;
        b=QuN84jwKibtJl9v4xwzreHIHgx5dptRaYlbqzyN16qGojba+Im+NMMrKRd2Sq0XP9f
         +wagMSrCTtdK9J4cttU4O4Ak9fXjlU9HjCqVA38XWElgBNqD6TLyg5ZCDP8Z9RE2a2Z8
         Nn4dTf/6sFT2veDg1bGBdCJm7DYknUFTyTDBeLO5us35DqcwE57D1QOshrAlPJwjFcHl
         ltkUs4r0R/hsolFk2UFA96NMEjGgcMSGITRkR9t+k62siHn6lz4azYV6R1S34drV7gg5
         EELzhiT7MqhWeycHwvojMBqY7HPMYH/sdpav1n97WSkhUMNcrWCUfLMiL5pX3+EMZ8C3
         0ZWg==
X-Forwarded-Encrypted: i=1; AJvYcCUGUsAMO7NWlMsefadV2UgS7Cb2Ve7Le+C64+xEwhbH5McUSoblBV6HoJvrts+YtWVzlztuoGItRPRw9QBU7grJYjwI8XTPDe61PQ==
X-Gm-Message-State: AOJu0YxRaTwkx676VCuNf4ImhwuYajgkgeF/Ti+ri4aOWg+TQmwRbjJk
	SFmLNx0GV5ZyvJRqhANRla26V60yqTXPULPeWP2lClyAc7sWa/fS2s5hZ7clpPM=
X-Google-Smtp-Source: AGHT+IG5madseBdrajPLDfi0JCmZAVRobzfk5jeLqyUONyOfoYpeCPi0a69zI4Bsl3Q/LkUSFq/W/Q==
X-Received: by 2002:adf:ee4a:0:b0:33b:74a3:dcfb with SMTP id w10-20020adfee4a000000b0033b74a3dcfbmr4566180wro.1.1707760501088;
        Mon, 12 Feb 2024 09:55:01 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWsN/zwLrqeA43ZV7v5OAsnu3UizrfqlhAFqAMmkLXkWNl5y+f5YWLR7VfGDVBy24P5uiVzvF5UJT/lCA0lKWH3iM27/yRddiuJSTBqYr9Ysv6TPobJvhtbwSlRamJFVfVzKsuwIBOxsARCHhMTx9jGKBgmwl5tzHgLiRFthQ1hFnC9nDpM05yxL/7lKLHx5nRncAbssSVF2Flr1uMlbGmSeJqdkIJzyMwqfciFtKQHbZdGp882oaUwHGFceZ/irRlSlGO3gqtDU/J/7pfcIDEJVRdeHrq9CX6fZDUHNIuKpssT3Hbm5w0yeVp3klJ48KZLiKoeGUb7lgIIMk8ukbizKYfNZNSdbNpl1p6SYGTPMQ0=
Received: from ?IPV6:2a02:8428:2a4:1a01:8c00:686f:ba67:b4c9? ([2a02:8428:2a4:1a01:8c00:686f:ba67:b4c9])
        by smtp.gmail.com with ESMTPSA id z7-20020adfe547000000b0033b55186901sm7380912wrm.94.2024.02.12.09.55.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Feb 2024 09:55:00 -0800 (PST)
Message-ID: <77edaf7e-aeb5-4fc0-8b69-85dcddfd5a58@freebox.fr>
Date: Mon, 12 Feb 2024 18:47:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Marc Gonzalez <mgonzalez@freebox.fr>
Subject: [PATCH v2 0/4] Add support for Freebox fbx8am boards
To: AML <linux-amlogic@lists.infradead.org>, DT <devicetree@vger.kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Add support for Freebox fbx8am boards

Marc Gonzalez (4):
   dt-bindings: vendor-prefixes: add freebox
   dt-bindings: arm: amlogic: add fbx8am binding
   arm64: dts: amlogic: add fbx8am board
   arm64: dts: amlogic: add fbx8am DT overlays

  Documentation/devicetree/bindings/arm/amlogic.yaml         |   1 +
  Documentation/devicetree/bindings/vendor-prefixes.yaml     |   2 +
  arch/arm64/boot/dts/amlogic/Makefile                       |   8 +
  arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso    |  35 +++
  arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso |  25 ++
  arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts          | 462 +++++++++++++++++++++++++++++++++
  6 files changed, 533 insertions(+)
  create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso
  create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso
  create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts

-- 
2.34.1

