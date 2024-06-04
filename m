Return-Path: <devicetree+bounces-72284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C55138FB45D
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 15:51:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6518C1F23D6C
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 13:51:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE4A81756A;
	Tue,  4 Jun 2024 13:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="oS2M85NQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AE9DDB3
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 13:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717509054; cv=none; b=pPjIZrIIdsV8x2EVCpHEQEZRPhq3IszFmxkD8JuPoElruPSvPgypdi1otjGLDhZaqAN4uo2keHPFUevrETqIn2Ve4rRFaeIPDuzz4iUC9vwO/LYJUHhL5ysrOdYXym7GfMlBug2tGTEe4iJF2EKGWRJm3Xw+TMOoGyXeWbtzlCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717509054; c=relaxed/simple;
	bh=QkhGlalB7DEY5agt86PPhG98UI0wY+31FL2gxcCl5uk=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:Content-Type; b=GsPIKmL7tFa+Dds0ZLndkKFpAq4XeEpA90V0TNWJOcqLrV+97aNyKvN/piiTScQkfa04JsHld24acciIlrhfPz6YGLb+OfcuuGcWx0wcaVqfGCHo5rQezX8OsQHdUkKPom5nSlIrVvyF5u9lHCNHZosWAjPUfOP3fwcA8XKgMvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=oS2M85NQ; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-42155143bb6so1608325e9.1
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 06:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1717509050; x=1718113850; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lJZIlN4XgnK9tDXCSYK6tAuRSp4UM2QNTlG/GA4rHi0=;
        b=oS2M85NQJCgUAXezHzRxEqoRMKqVjsXegrCDn3+iwBAT0fdskPWdVL16I0o7LLvkPP
         /G3VlDdPCtREYQ7uHp5cnlY0gzHZHW2nog5xxnwS9vU+hNX/q5qo7QNlMUHdD1VtYYhr
         CnuMEPymGpB0xvicHU4gQFx3IopHryWW5DV0dwkcOM6uRVG4qlF7f5a71BiB8GOpLVRL
         yd0S5fW2E7UTzsJNEfajFCC5yYXQj1NjimANd2cVcB9yPMt071TfaTqApZiYH1C/P0Jp
         i69o6w6SIU8kHtmnAfDLGpk1NdZZUMZJBw5PFdGCtNPg2TNG9BNoVxWD2+zutdeNMHaZ
         njpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717509050; x=1718113850;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lJZIlN4XgnK9tDXCSYK6tAuRSp4UM2QNTlG/GA4rHi0=;
        b=eSeGYRmuwBWXGRc3laUIe2LKpFeWKpglH0iMba85WJKlceREziSvu2feM+LGdwIN/L
         5joR/zhaSfDKsf4kGTqPsFopX1pJT//m/8zdIESL84hhvk5MFOdAuf4Iy8qhGiq4QslN
         8pfcijRq2Y5RYVM2nXHjS5KMrORIMSsLaAlOC37alUTrYTj9dgQos/Oyw1mEb4tN7P8s
         8b2LIheC5jRX2uySNYm3oqXhfCFfrRd17i7HSojvVFhGyDIrWJDv8IRUe1JmkJ+2AwZz
         vrUXrdzspaf4sbeOTlKl9riRhhNL8s6Y3qt6aBraUdqSmlLQDvXY7Hims42n5potTLho
         SFzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXtrrg/OFLYLypRX0I8PYnT1P//isYA7B9mchSwzf8e3QVW50POOi+oqQuYkcbMmQwa1a+Bez/vfU796h0j3agnr2WsxP1wOxfr2g==
X-Gm-Message-State: AOJu0YwwWyjKFmYJwZDyigqusWODR4c70o5hOqv3v/huyb7ewJmZii7Z
	IEy6spSA26R9OcOTw5XLdOAZ9MpwcLP/Uw2K77IWt/nW0DAVYOvjm62Adxt3OI0=
X-Google-Smtp-Source: AGHT+IHQZBq9gGi04QHPhWrIeVoppGhM4cBpGMsNRG5Tm6dNoMEyFQ9kGxrHF/G1xHo1JxNtiYUrpA==
X-Received: by 2002:a05:600c:c09:b0:418:ee2:5911 with SMTP id 5b1f17b1804b1-4213d3068f9mr54739485e9.28.1717509050485;
        Tue, 04 Jun 2024 06:50:50 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42133227f8asm139569755e9.19.2024.06.04.06.50.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jun 2024 06:50:50 -0700 (PDT)
Message-ID: <a2cb1290-9e01-4136-9592-ce439b1096b6@freebox.fr>
Date: Tue, 4 Jun 2024 15:44:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Marc Gonzalez <mgonzalez@freebox.fr>
Subject: [PATCH v2 0/4] HDMI TX support in msm8998
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar
 <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 MSM <linux-arm-msm@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

DT bits required for HDMI TX support in APQ8098 (msm8998 cousin)

$ make -j20 dtbs_check
  DTC_CHK arch/arm64/boot/dts/qcom/msm8998-mtp.dtb
/home/mgonzalez/linux/arch/arm64/boot/dts/qcom/msm8998-mtp.dtb: pcie@1c00=
000: False schema does not allow {'compatible': ['qcom,pcie-msm8998', 'qc=
om,pcie-msm8996'], 'reg': [[29360128, 8192], [452984832, 3869], [45298870=
4, 168], [454033408, 1048576]], 'reg-names': ['parf', 'dbi', 'elbi', 'con=
fig'], 'device_type': ['pci'], 'linux,pci-domain': [[0]], 'bus-range': [[=
0, 255]], '#address-cells': [[3]], '#size-cells': [[2]], 'num-lanes': [[1=
]], 'phys': [[36]], 'phy-names': ['pciephy'], 'status': ['okay'], 'ranges=
': [[16777216, 0, 0, 455081984, 0, 1048576], [33554432, 0, 456130560, 456=
130560, 0, 13631488]], '#interrupt-cells': [[1]], 'interrupts': [[0, 405,=
 4]], 'interrupt-names': ['msi'], 'interrupt-map-mask': [[0, 0, 0, 7]], '=
interrupt-map': [[0, 0, 0, 1, 1, 0, 0, 135, 4], [0, 0, 0, 2, 1, 0, 0, 136=
, 4], [0, 0, 0, 3, 1, 0, 0, 138, 4], [0, 0, 0, 4, 1, 0, 0, 139, 4]], 'clo=
cks': [[37, 94], [37, 91], [37, 92], [37, 93], [37, 95]], 'clock-names': =
['pipe', 'aux', 'cfg', 'bus_master', 'bus_slave'], 'power-domains': [[37,=
 0]], 'iommu-map': [[256, 38, 5248, 1]], 'perst-gpios': [[39, 35, 1]], 'p=
cie@0': {'device_type': ['pci'], 'reg': [[0, 0, 0, 0, 0]], 'bus-range': [=
[1, 255]], '#address-cells': [[3]], '#size-cells': [[2]], 'ranges': True}=
, '$nodename': ['pcie@1c00000']}
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie.yaml#
/home/mgonzalez/linux/arch/arm64/boot/dts/qcom/msm8998-mtp.dtb: pcie@1c00=
000: Unevaluated properties are not allowed ('#address-cells', '#interrup=
t-cells', '#size-cells', 'bus-range', 'device_type', 'interrupt-map', 'in=
terrupt-map-mask', 'linux,pci-domain', 'num-lanes', 'pcie@0', 'ranges' we=
re unexpected)
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie.yaml#
/home/mgonzalez/linux/arch/arm64/boot/dts/qcom/msm8998-mtp.dtb: phy@c0120=
00: 'vdd-supply' is a required property
	from schema $id: http://devicetree.org/schemas/phy/qcom,qusb2-phy.yaml#
/home/mgonzalez/linux/arch/arm64/boot/dts/qcom/msm8998-mtp.dtb: clock-con=
troller@c8c0000: clocks: [[34, 0], [37, 178], [150, 1], [150, 0], [151, 1=
], [151, 0], [152], [0], [0], [0], [37, 184]] is too long
	from schema $id: http://devicetree.org/schemas/clock/qcom,mmcc.yaml#


Arnaud Vrac (1):
  arm64: dts: qcom: add HDMI nodes for msm8998

Marc Gonzalez (3):
  dt-bindings: display/msm: hdmi: add qcom,hdmi-phy-8998
  dt-bindings: display/msm: hdmi: add qcom,hdmi-tx-8998
  arm64: dts: qcom: msm8998: add HDMI GPIOs

 Documentation/devicetree/bindings/display/msm/hdmi.yaml      |  26 +++++=
+++++-
 Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml |   1 +
 arch/arm64/boot/dts/qcom/msm8998.dtsi                        | 128 +++++=
+++++++++++++++++++++++++++++++++++++++++++++-
 3 files changed, 152 insertions(+), 3 deletions(-)

--=20
2.34.1

