Return-Path: <devicetree+bounces-146687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A44EA35D82
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 13:23:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 29F15188DE16
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 12:23:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 255D8263F41;
	Fri, 14 Feb 2025 12:23:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="wnp5FasM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8130263F24
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 12:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739535798; cv=none; b=QBa8W7KGgjFXt8R82QS++ZYHbeAtlvkqL6SFnk6p2nnmoNSoMwRkoRyHs/kY9BVmr0YRScaIOYxu+WoJEmTB+2ef+KgFEzwpgJZwRiRL6lc1Zk844f2IkKuu+G+w8W1WfDTBpfhAuRl9PBYJJ3kk1jcGM0Y0n059guUBs6656s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739535798; c=relaxed/simple;
	bh=wcwQDGL9wRwmKRnvtQo12TMOIB4DrcDrx4aB+c1hh74=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Vy0IsVeQl9eC4jkbXwYsWd+GkEEcxfsv0Aqb48EMhg2jbdO2mu//5TewP1O5R3zsxWcUwS6AcdBaifqJVclPUjW8XJtiv+1JzBylVK42lV7sEhrpEL9HyII/rJZ5cENvkANd5qdS5mXgmVFjzuMsDKwUnQ3F1TReSbsQ8zDQDYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=wnp5FasM; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-38a8b17d7a7so1143117f8f.2
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 04:23:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739535795; x=1740140595; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ojkmRkDUD0QfjQux+tt0Arxfn0O3INfxObbDf7B8gRk=;
        b=wnp5FasMtuf858IyGy90f9kw3OsTlLyD5gnowWssQaQa2eRYRExqxwsByuo9UtpGhV
         x26Vb4XaQ5a+1w5KEAXXoASoMcn8anTuZ0bjgw9OG7AYTstvXcv8NQi/Rb1ePbZvZLD9
         9vR/w9zHj/YQI5YF734W0JtIwIPc5/F9/vD2qGwz01zNnwYm75P1phm7bilqFbzjDlB2
         vzEJGvNSOk17KRYdulGveQ4yBk9IXVLcaJAd6D0NQpRKu0cwDsD17/ALFgxESi2jKlOf
         WPnHwM11Hdqw4Li4xfN5y9tXarLQNtfIPt1IBDViwLlSLx80fNwCFZbilMlWzKoCmm00
         m31Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739535795; x=1740140595;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ojkmRkDUD0QfjQux+tt0Arxfn0O3INfxObbDf7B8gRk=;
        b=Az9FiLTVDxU6ucmIrzEE0r9lkSlZ9GadtKJFYu310CWAOgl5F/sIMpy0rGlwT2JAwS
         MDFBTSRtVhmO1vXTmLcEwid3+t0LB5OzEmWds+/ThmLrFPo67rLQ9RQ++W6knHJQyxGH
         JN1KqRkaeTkGeEZsjmEZLU34IosBeTfvMO3mico4pF3LCKxJRIlAmdQ8choiE3rOaUwS
         MoJ/CEjYpY0dnk0Aqsjvy5GIVb9DfDzAKSV3rQPAgWiC+YgqQvjLj6th3pxXdauWDWg6
         5eTyCez/gZTWpW2kJfH1EXuTnIzCNKCRPVxVuvRvp6OQaJ72NFQWXjKrNAnYP5k6gONR
         TyEw==
X-Forwarded-Encrypted: i=1; AJvYcCUb1z8evEGvD3TRxts7Itdz4qcX81dhOIwG8O/xY0BHBUTlbwzoUbzSUfMA4HT1voYUhPT3kBxN4Ga1@vger.kernel.org
X-Gm-Message-State: AOJu0YzaTBVNKxRJEhTlKJ3OyTkc4LuZ718VhV747VTd9J0E1jkpyAS3
	40rsUGr6UsPKulQfKOJ3kku9AJqvxzz4hp21193LXJtuCR9rEIiHyNbRJoRsTTY=
X-Gm-Gg: ASbGnct4x8nDhpTcxXYxWKUtwM7HCbj4VgNNIw+DI8AF+cx9KWLtPA42Y8EU5KT00tI
	QnCoc36kG/MyKwPxZPUtV9L42xadEaUiAE14NJk4D0rmS32BurzMgAVQ8CprOZsBzcOhH3hBz8f
	kQ+4zfj5H6BVu08Foa3519YOqnl0LFCe6rNudXYep3nQ5bpvJt4/0KBwVHgqyCWTaexSnqCU/Xd
	z8wPXIQInELEfhWyaXZr3bveIoVP3ppCO9skNyZEUFJlOKS5QD+fvhf59cynmDt6OtXcQN7puP+
	nQG+vhXm+gvn3HCWAj6thxKhgY3P+ZOimgzhSSdTdVCdZEFN5H6fP1ZQI8m7ZhcMJ5aILhoy
X-Google-Smtp-Source: AGHT+IGuYpL2jNukJnR/CcEbL9dQDureb51VtjkbudS9JUhsSCpoiJ1D3vxFlLjgEJGMIrJUuMbabg==
X-Received: by 2002:a5d:64a1:0:b0:38f:2856:7d96 with SMTP id ffacd0b85a97d-38f285680f6mr6449556f8f.1.1739535793496;
        Fri, 14 Feb 2025 04:23:13 -0800 (PST)
Received: from [127.0.0.1] (amontpellier-556-1-148-206.w109-210.abo.wanadoo.fr. [109.210.4.206])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f259f7b68sm4424654f8f.85.2025.02.14.04.23.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2025 04:23:12 -0800 (PST)
From: Esteban Blanc <eblanc@baylibre.com>
Subject: [PATCH v4 0/6] iio: adc: ad4030: new driver for AD4030 and similar
 ADCs
Date: Fri, 14 Feb 2025 13:22:30 +0100
Message-Id: <20250214-eblanc-ad4630_v1-v4-0-135dd66cab6a@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIY1r2cC/32Py2rDMBBFfyVoXZXR6GVllf8ooegxagSpHeRiE
 oL/vXJoAi1OYTZ34Jw7c2Uj1UIj226urNJUxjL0LaiXDYsH338QL6llhoAKDCpO4ej7yH1SRsL
 7JLjwYBU4S8EJ1rBTpVzON+XbvuVDGb+Gerk1TGLZ/iNrA9wkb6yKQgZFu+AvxxIqvcbhc9H/s
 PYJm1MEIyCiDLDOdohPWB1Nl6VEm1P6zS5/TPi4XaBwKw5c+qUhrR3YkPWKQ94dGoSEFYdsDtB
 IXcTUOfv3jnmevwFz+n1UswEAAA==
X-Change-ID: 20240624-eblanc-ad4630_v1-1a074097eb91
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: Michael Hennerich <michael.hennerich@analog.com>, 
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
 Esteban Blanc <eblanc@baylibre.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.2

This is adding DT bindings and a new driver for AD4030, AD4630 and
AD4632 ADCs.

This work is being done in collaboration with Analog Devices Inc.,
hence they are listed as maintainers rather than me.

The code has been tested on a Zedboard with an EVAL-AD4030-24FMCZ,
an EVAL-AD4630-24FMCZ and an EVAL-AD4630-16FMCZ. As there is no eval
board for AD4632 the support can't be tested at the moment. The main
difference is the reduced throughput.

Signed-off-by: Esteban Blanc <eblanc@baylibre.com>
---
Changes since RFC:
- Reorder IIO channels to have the common byte channel next to its differential
  channel.
- Extended names for IIO channels.
- Diffrential data channels are marked as differential channels on IIO
  side.
- Use get/put_unaligned_be24 for offset and sign extend it.
- Common byte channel now has 32 realbits. This will be the same as what the
  FPGA will return, avoiding different channel layouts.
- Fix missing newline in some error messages.
- Add comment for the use of spi_sync_transfer instead of
  spi_write_then_read in ad4030_spi_read.
- Use DMA safe buffers for regmap operations.
- Clarify calculation for number of bytes to read from the device during
  conversion.
- Formating fixes.
- Add documentation page.
- Link to RFC: https://lore.kernel.org/r/20240627-eblanc-ad4630_v1-v1-0-fdc0610c23b0@baylibre.com

Changes since V1:

The most important change is the use of the RFC's IIO channel layout as it's
the most space efficient compared to the V1. In the event of a future DMA
enabled version using the ADI's SPI Engine, the IIO channel layout would be
different anyway. The V1 layout had a more logical ordering of the IIO
channels but since we are using labels in this version, there is no reason
to keep it.

- Use REGMAP instead of REGMAP_SPI in Kconfig
- Select IIO_TRIGGERED_BUFFER in Kconfig
- Use layout with the differential channels first then the common byte channels.
- Flatten rx_data union/struct layout
- Use get/put_unaligned_beXX
- Scale read is done without requiring direct mode
- Grade check is just a warning now
- Use label instead of extend names
- Use IIO_VAL_INT_PLUS_NANO for gain values
- Discard out of bounds values when setting oversampling ratio
- Merge AD4030_OUT_DATA_MD_(16|24)_DIFF together
- Use iio_chan_spec channel field to avoid maths in several places
- Fix typos and formating
- Link to v1: https://lore.kernel.org/r/20240822-eblanc-ad4630_v1-v1-0-5c68f3327fdd@baylibre.com

Changes since V2:
- Put config mode logic into regmap read/write handlers
- Link to v2: https://lore.kernel.org/r/20241219-eblanc-ad4630_v1-v2-0-f36e55907bf5@baylibre.com

Changes since V3:
- Rebase on top of v6.14-rc2
- Fix scaling value on common mode byte channels
- Remove ARRAY_SIZE in favor of sizeof on tx/rx_data
- Link to v3: https://lore.kernel.org/r/20250130-eblanc-ad4630_v1-v3-0-052e8c2d897d@baylibre.com

---
Esteban Blanc (6):
      dt-bindings: iio: adc: add ADI ad4030, ad4630 and ad4632
      iio: adc: ad4030: add driver for ad4030-24
      iio: adc: ad4030: add averaging support
      iio: adc: ad4030: add support for ad4630-24 and ad4630-16
      iio: adc: ad4030: add support for ad4632-16 and ad4632-24
      docs: iio: ad4030: add documentation

 .../devicetree/bindings/iio/adc/adi,ad4030.yaml    |  111 ++
 Documentation/iio/ad4030.rst                       |  181 +++
 Documentation/iio/index.rst                        |    1 +
 MAINTAINERS                                        |   11 +
 drivers/iio/adc/Kconfig                            |   14 +
 drivers/iio/adc/Makefile                           |    1 +
 drivers/iio/adc/ad4030.c                           | 1233 ++++++++++++++++++++
 7 files changed, 1552 insertions(+)
---
base-commit: a64dcfb451e254085a7daee5fe51bf22959d52d3
change-id: 20240624-eblanc-ad4630_v1-1a074097eb91

Best regards,
-- 
Esteban Blanc <eblanc@baylibre.com>


