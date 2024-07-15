Return-Path: <devicetree+bounces-85893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF74931B18
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 21:38:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B96761F22D96
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 19:38:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1777713A268;
	Mon, 15 Jul 2024 19:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=patrick-wildt-de.20230601.gappssmtp.com header.i=@patrick-wildt-de.20230601.gappssmtp.com header.b="cXTiYOxj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f226.google.com (mail-lj1-f226.google.com [209.85.208.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3354F132464
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 19:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721072301; cv=none; b=CY7pcndf+kVdBcBC/S42OCkq/T/Ipn7AatWtAJ2teGUYkLz7sYuupznW53n7rV1zFJ2GN7F7OEZpK9dexXp/Dhi3RPkHR8demg8bMc7APOjCxdr4gp1apO/J7ixmXTbxpoDsPv7hqgUwxWkpU0QNecK7PfktLkuNJ6abAKrzcFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721072301; c=relaxed/simple;
	bh=cemq+9OuqeY3+ummp337Mvo5F4mXDIT79m4hgKaBI1Q=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=tB0c40ICX7vnhUCizgafnYPkPouTB6qsQIX2BJokEis3TBagjgDU1kES9oRueR70Ge4vDN5reQ/atgAG89obhU7mBG7ynpj6yUPQTuf808lgN/F3ZgISbCRit9ee6WcyieRzwImfcVQbldVbRzmgwE/ie2uoFBXNeT7lb2br55U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=blueri.se; spf=pass smtp.mailfrom=blueri.se; dkim=pass (2048-bit key) header.d=patrick-wildt-de.20230601.gappssmtp.com header.i=@patrick-wildt-de.20230601.gappssmtp.com header.b=cXTiYOxj; arc=none smtp.client-ip=209.85.208.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=blueri.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=blueri.se
Received: by mail-lj1-f226.google.com with SMTP id 38308e7fff4ca-2eee083c044so26603171fa.3
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 12:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=patrick-wildt-de.20230601.gappssmtp.com; s=20230601; t=1721072296; x=1721677096; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NFsCI/nUGMHpQYBhPffSAiv0o4Z8VMEXV4FQksJuyUk=;
        b=cXTiYOxjsrz5BFWB5pXFPYwf5UusjMzd5o6+Kwrii5SuKh/2njn3BY9/edtzCLuxWn
         TRzSnXtUIkdwbyAxibs7EOTVlJEVmAxZdOiRsM71pRbF+eNhztMeijNDVSxe2SlziSxX
         EMAq3G5sVqhGIYC9cXO0/yxR9YQaPtRAZPt/RT5idM5vwS8Qj0Rb4Ztvx4wGIlOxE9Zm
         A9B8d2QaYZZ3XnEsbt+aYRGczVBra+jhfdbqUbt/osRgy2JofcSWdya490iHGSHts3us
         lEY5zUnHVMJE+KG82VozYh659abwJ7jmNvY0Jv9S93Ly3RTwKpLBDTkPGEqDFgMdjxm2
         zBAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721072296; x=1721677096;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NFsCI/nUGMHpQYBhPffSAiv0o4Z8VMEXV4FQksJuyUk=;
        b=Y6VUojOZPz/lByd2M9yNwacs2a6nqpoo0/EZZBgoC2LHONBIeWBtZnCK+8d0T3Ytc8
         V7TFxsRCKAFwP+U7hQqzc7xLpLtGzKo7gl1ZXwe6ve7+ytaqgETWJFa/r+ydPh5esjlU
         R39vaCdBV9crEnb6zSYLPpwThJBlUbVGnTkEsgvauSFV+LWeUtJ64jcIrOq/GrIpLUvt
         5zY0LP2mMPmu4SmpyxupCH3ZQZtw6ZUsWdZxzlQybGsYIsmSSsBJPXeNJH45a2Vw1UZZ
         z4e9wgXsrTxcqVeLbfZ5tsvn3iF19LQ23hWat00avEAS8jGmYDVD2H3RTlEBoRhiPQRw
         QeYg==
X-Forwarded-Encrypted: i=1; AJvYcCXDoWyaOOw7ZwZAL/XZXZHB1o90505XlNPT7AgPFcgLiskr6KFHKEcsWuDKkd4CsQKr61mLEuqpxkn4Tws5mOUKi/d6bjq5zV53IQ==
X-Gm-Message-State: AOJu0Yw/NInn+Gp4IpyOLOWFYOZPBQFFYqTDp1CZW6uGh5v0UUGwGMKP
	a7MYgKyknt4ugVG/tMJ1yHrFJiS+R1h5eHYgfRLHIEX4cNx4wK8rsWkRYNp4m+Xpl3ymd++t079
	rQv/izq4WVTuvh+QszJAzXQiQYQ2ror5j
X-Google-Smtp-Source: AGHT+IHjhs7lFn6xanLhyvwaA7PatZ3sOOeEdpx/Nn5lzGlDNwLD/+lV4ElphVBjqkaDIyu0IV9Qs/ersaIQ
X-Received: by 2002:a2e:91d3:0:b0:2ee:8eb6:ff61 with SMTP id 38308e7fff4ca-2eef4156be4mr722331fa.2.1721072295803;
        Mon, 15 Jul 2024 12:38:15 -0700 (PDT)
Received: from windev.fritz.box (p5b0ac4d1.dip0.t-ipconnect.de. [91.10.196.209])
        by smtp-relay.gmail.com with ESMTPS id 38308e7fff4ca-2eee1936872sm625101fa.64.2024.07.15.12.38.14
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 15 Jul 2024 12:38:15 -0700 (PDT)
X-Relaying-Domain: blueri.se
Date: Mon, 15 Jul 2024 21:38:11 +0200
From: Patrick Wildt <patrick@blueri.se>
To: Kalle Valo <kvalo@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Steev Klimaszewski <steev@kali.org>, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Patrick Wildt <patrick@blueri.se>
Subject: [PATCH 0/2] arm64: dts: qcom: x1e80100-yoga: add wifi calibration
 variant
Message-ID: <ZpV6o8JUJWg9lZFE@windev.fritz.box>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This series adds the missing calibration variant devicetree property
which is needed to load the calibration data and use the ath12k wifi
on the Lenovo Yoga Slim 7x.

Patrick Wildt (2):
  dt-bindings: net: wireless: add ath12k pcie bindings
  arm64: dts: qcom: x1e80100-yoga: add wifi calibration variant

 .../net/wireless/qcom,ath12k-pci.yaml         | 59 +++++++++++++++++++
 .../dts/qcom/x1e80100-lenovo-yoga-slim7x.dts  |  9 +++
 arch/arm64/boot/dts/qcom/x1e80100.dtsi        | 10 ++++
 3 files changed, 78 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/wireless/qcom,ath12k-pci.yaml

-- 
2.45.2


