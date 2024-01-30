Return-Path: <devicetree+bounces-36846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 16942842DC9
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 21:28:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ADF9AB22E0C
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 20:28:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D952E762C6;
	Tue, 30 Jan 2024 20:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="DcdbIT2t"
X-Original-To: devicetree@vger.kernel.org
Received: from out-183.mta0.migadu.com (out-183.mta0.migadu.com [91.218.175.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E13D762C3
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 20:28:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706646485; cv=none; b=NxnvooqpTu2oYUSqDlv7BxVOCeRcHLtTJLbQm1dFMKfWgQ6gvBWy+gaF75fXoFHoLowheKlkxMCmVk8zILwVHcZMp54NBIAsh1tmKXAdz7WY5Atcf/Qo8bwKD/itdpYmZIJsOFD0fy8fN3gsYHSqCrLZMJjcH2OKILAYpBc78N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706646485; c=relaxed/simple;
	bh=SXyoY4c89zCCRRqUaPF4mV/ld3XAkwmLCty8ypRfE7c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=d3djJe9m2RfLLddMznnNpm++5O/9rO6dbawyifX0bXliOe0YT/Io7y1xHYbeHVLAtVt+9kWkgDa2Lju1MPHZ02oqfuOCl7S2QfEquePuzmU2qLdlKv75WgW5ON7ygNJq2oXk010u3obOmonoQGv/cTA2MHCz1iIIfrdeUoSRIKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=DcdbIT2t; arc=none smtp.client-ip=91.218.175.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1706646480;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=JxT7K4y/Sv3pLUk5TmPV+oOT6BOgorpLDqW2y/8Bx94=;
	b=DcdbIT2tqaF7I2gI+IL/D4iiXZ51LdFjZo7eNv+Xhpnvg9mNoScZ901PFIP/ff2bAt5LHN
	kKbXHKqdMkAN2tEafi80Pr+YAD4hK9Tjfb9k1RrBIAVS8JNVqtO9ueIqCg57eaq5TmOdns
	+OVqOHoHXKbxLI7pkfOPYepemvHG2GUI2uRv2qdpT22MncFqgXoVF4/FPlbYOQ2MStziip
	cmXpW6uLSYQ0A+40cqKTfLP7uXNWGO2G8El4zjZJgNn/HLFSTLoR+Nnbu8s5dTw22BJS48
	anshlWQrtXyeNVUllFzCO0T5uJrSveQxfSSdjfXJ4udEK835l/NG8vraJ0q56Q==
From: Anton Bambura <jenneron@postmarketos.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/5] Device-tree improvements for Lenovo Flex/Yoga 5G laptop
Date: Tue, 30 Jan 2024 22:27:50 +0200
Message-ID: <20240130202755.2289952-1-jenneron@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

This improves device-tree of Lenovo Flex/Yoga 5G laptop with these changes:
- fix GPU firmware path (make it use device-specific firmware directory);
- set names for i2c hid nodes (so it is clear which node corresponds to which
device);
- add touchscreen support;
- fix touchpad issue when it gets stuck on right or middle click;
- allow UFS regulators load/mode setting.


Anton Bambura (5):
  arm64: dts: qcom: sc8180x-lenovo-flex-5g: fix GPU firmware path
  arm64: dts: qcom: sc8180x-lenovo-flex-5g: set names for i2c hid nodes
  arm64: dts: qcom: sc8180x-lenovo-flex-5g: enable touchscreen
  arm64: dts: qcom: sc8180x-lenovo-flex-5g: set touchpad i2c frequency
    to 10 kHz
  arm64: dts: qcom: sc8180x-lenovo-flex-5g: Allow UFS regulators
    load/mode setting

 .../boot/dts/qcom/sc8180x-lenovo-flex-5g.dts  | 48 ++++++++++++++++---
 1 file changed, 41 insertions(+), 7 deletions(-)

-- 
2.42.0


