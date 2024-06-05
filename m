Return-Path: <devicetree+bounces-72744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0168FCE0C
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 14:59:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E1B6B1C21FF0
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 12:59:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 442EB197A93;
	Wed,  5 Jun 2024 12:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="KPzRi4jV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68472197A7D
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 12:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717589702; cv=none; b=Ng/0Zep+MRcUNZ4rA27q22sbebr1if18ZFOgDvCF/WJramutO9YDQ+qcTEf8p1y3Jpm1Swu6ryzcXinBdZ7kUbuTGtjKXmv7xmJQ6CLW3l9qA+dTDiwT7O5o5AouBmFqV32kdwdubO7Ly98JJF6LZO3Koz9cFmZ+BqpEmcOsrPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717589702; c=relaxed/simple;
	bh=Tpy/pmpUq6OhMp4Y6owJRx5Zj15wNHp0tVt/aexDCPY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TM0jCnJ3ZwSimSUVFMvOAy7+nxnAciUZ4bodTxR7HLwfO+Cp4cDozHUVLU2FN1so9BrW/g2+ellUcUlfu7fdCx4jYft+CBlCt+VhiPpO/c3FgqLECAzQ0kV23hWxouhUCdrCY6DAbx9hgAPME8oR3GXY936suacPfAfhbuYtFF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=KPzRi4jV; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-35dc1d8867eso5825713f8f.0
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 05:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1717589699; x=1718194499; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AbnwG/ezRU+U2MTkhsUZhVDafOrU2ggIoLGjcqVnB9U=;
        b=KPzRi4jVxN5P6DcaDTEk8eqDk++Ox5RW60vNymtJ9CBnu29036MjPhasoHYGEWiV/b
         bPd8PIRqzcKkPNCFRr2KzrNw4nvfrm0sGLRb09r8s8bOfwXSgc6YbWqkqN+CzOBJPDz9
         HNkqhoMtkW4DYCFxR309zJnPHhNCRUbBpPW84Xvk10AlrU9qRBOAp54hrFrDwIo/yjrI
         pUMzaZER4xLJ1HNa34iyqNvxWxdeVs1gh9D7Im70JOKLrs56jz6goaYzRKXgXNhoQWvK
         nMKSD5QoS4zZl7Iu0oEQaQ9zxMC/GQLfuYuoFnqv9LqloV93yJz3VhpxToLEYsHGkikw
         XNzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717589699; x=1718194499;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AbnwG/ezRU+U2MTkhsUZhVDafOrU2ggIoLGjcqVnB9U=;
        b=pEnsGdTXld6GkwWnzG2HFoa2S5hqmcuCsY3bythQRpuGf7w79WZatd2I9xBxGadJbO
         TQ0AprWp0PUjJ6hsiIHyCcxSYjIdqvXZY9D4XWsrJUEim2+vrUGKFy1bcEg6xVN5HhMR
         WGfHIbOkt300RejBgiRyC/5N7mnYdErGMaUSeKvlp+UyW2+uoGtbggELxNSyYRKGqmf4
         pfUUT4Ad+zSb7EX5Fbs9yJOGlu/EsgynCFiUvrgNQf+KbIVpu8qe3C6/gmvmTKDafihQ
         +0W/vBvSa9W+NAdqyntgfHO04xFmTtCSawgmAiRWolffecbUna+5rsxCPHW62bzglsFu
         2eoQ==
X-Forwarded-Encrypted: i=1; AJvYcCXsYt4NlvmWmUDdJuKq9Po+o0GauDoIvsSD0DrYc4UXoNKG23areGre6SRAp3rPtG8mu0G1lK5FSmwjr3Pjh6GMkoqpxb499a1ypg==
X-Gm-Message-State: AOJu0Yz8hP0jy1Qr7PUsy9VDdqeasEhRNpOq+dItn0v6DIhDQ646rjsk
	SbcDoZs+mwNk2eA0C6LuLT20W3FLLXu9uIwWtxpwql6ukBM5UT0Gps20lwmCVZw=
X-Google-Smtp-Source: AGHT+IES6qC4a3qioA9JW15P243/0NCYchDf+qjvfvOSPnuKsUEkfe6Zs6THEZStcpMKzzdb62I5vw==
X-Received: by 2002:a5d:4bcb:0:b0:354:faf4:fa87 with SMTP id ffacd0b85a97d-35e84057d18mr1733789f8f.3.1717589698650;
        Wed, 05 Jun 2024 05:14:58 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:75a:e000:d3dd:423:e1eb:d88b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35dd04d94e6sm14415794f8f.51.2024.06.05.05.14.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 05:14:58 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bjorn Helgaas <bhelgaas@google.com>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v9 0/2] dt-bindings: describe the PMU modules of QCom BT/WLAN packages
Date: Wed,  5 Jun 2024 14:14:47 +0200
Message-ID: <20240605121450.23697-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Hi Mark!

Here are the two dt-binding patches from the power-sequencing series
targeting the regulator subsystem. To keep the cover-letter short, I
won't repeat all the details, they can be found in the cover-letter for
v8. Please consider picking them up into your tree, they were reviewed
by Krzysztof and already acked by you earlier.

Changelog:

Since v8:
- fix typos in bindings
- Link to v8: https://lore.kernel.org/r/20240528-pwrseq-v8-0-d354d52b763c@linaro.org

Since v7:
- added DTS changes for sm8650-hdk
- added circular dependency detection for pwrseq units
- fixed a KASAN reported use-after-free error in remove path
- improve Kconfig descriptions
- fix typos in bindings and Kconfig
- fixed issues reported by smatch
- fix the unbind path in PCI pwrctl
- lots of minor improvements to the pwrseq core

Since v6:
- kernel doc fixes
- drop myself from the DT bindings maintainers list for ath12k
- wait until the PCI bridge device is fully added before creating the
  PCI pwrctl platform devices for its sub-nodes, otherwise we may see
  sysfs and procfs attribute failures (due to duplication, we're
  basically trying to probe the same device twice at the same time)
- I kept the regulators for QCA6390's ath11k as required as they only
  apply to this specific Qualcomm package

Since v5:
- unify the approach to modelling the WCN WLAN/BT chips by always exposing
  the PMU node on the device tree and making the WLAN and BT nodes become
  consumers of its power outputs; this includes a major rework of the DT
  sources, bindings and driver code; there's no more a separate PCI
  pwrctl driver for WCN7850, instead its power-up sequence was moved
  into the pwrseq driver common for all WCN chips
- don't set load_uA from new regulator consumers
- fix reported kerneldoc issues
- drop voltage ranges for PMU outputs from DT
- many minor tweaks and reworks

v1: Original RFC:

https://lore.kernel.org/lkml/20240104130123.37115-1-brgl@bgdev.pl/T/

v2: First real patch series (should have been PATCH v2) adding what I
    referred to back then as PCI power sequencing:

https://lore.kernel.org/linux-arm-kernel/2024021413-grumbling-unlivable-c145@gregkh/T/

v3: RFC for the DT representation of the PMU supplying the WLAN and BT
    modules inside the QCA6391 package (was largely separate from the
    series but probably should have been called PATCH or RFC v3):

https://lore.kernel.org/all/CAMRc=Mc+GNoi57eTQg71DXkQKjdaoAmCpB=h2ndEpGnmdhVV-Q@mail.gmail.com/T/

v4: Second attempt at the full series with changed scope (introduction of
    the pwrseq subsystem, should have been RFC v4)

https://lore.kernel.org/lkml/20240201155532.49707-1-brgl@bgdev.pl/T/

v5: Two different ways of handling QCA6390 and WCN7850:

https://lore.kernel.org/lkml/20240216203215.40870-1-brgl@bgdev.pl/

Bartosz Golaszewski (2):
  regulator: dt-bindings: describe the PMU module of the QCA6390 package
  regulator: dt-bindings: describe the PMU module of the WCN7850 package

 .../bindings/regulator/qcom,qca6390-pmu.yaml  | 185 ++++++++++++++++++
 1 file changed, 185 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml

-- 
2.40.1


