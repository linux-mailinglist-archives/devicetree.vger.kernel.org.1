Return-Path: <devicetree+bounces-63629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EABD48B5AED
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 16:08:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A60C5283AEC
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 14:08:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5B5379B7E;
	Mon, 29 Apr 2024 14:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="Nhw9HWjJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00358763FC
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 14:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714399703; cv=none; b=KUXieV2Bp/ff5BJto2fN3gdFHRWin3V2lnM1iQQFkvPq9/jVQSBEvDeI+hUhKl/Xc4Pu+OIyFDMYn6rH1luDU1Qe06oA3bRays/N+pMHnuka3PUkAMxK+MyI3eUoF754OtOQWw3WtjmzUQ/PWHTYtiYnTyXN7LLuw9mrU1KpPBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714399703; c=relaxed/simple;
	bh=UMmU4EaPtt4Sc7gHKo5oC4Xvqd8k19rulgB4e7VGPFs=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:Content-Type; b=n5/xukHKsu90VrqYHv+iDbPoiZ4HIgPj+Bj4qRYWKzGL19RzhzdZUVylh9ipTax6jnLV2XmiTxAGUjVQqRKIDJC20nE+3WV5GV6/czqMCKmXT6w8crcRhZdXnNxAWAzADWHF6sxVC0cpJBan1YoLzZzJrqDB5S7KxI+HIHPKtd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=Nhw9HWjJ; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-349545c3eb8so3092675f8f.2
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 07:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1714399700; x=1715004500; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZgN/Q2xaGtKT6vvkSTDEzO9awo6/5voQRCCnxevwdKQ=;
        b=Nhw9HWjJqIH35rtbuCYJNilli0R5uvlS94U5G5XGnJk/WZXA33owxAekzK4+z6KRYc
         JDvlARjEujZwlWDdxxoggVYaSHJZ+m2xDVx9adEwkQz1TMtlNIJQmJISHaQTmnoKOftO
         cVdQa7gbiIHXebQv42VOUf2BFzAR1zIi3iKHTs3KvXAsY6I/NbHisNdpMEDUcHKGD1Pa
         pPLhA7Vj6c8nvgOWUxLQaCf/lWoe4CXcAEBxkQItuc5snD0pfj3IbEUk7ll4gOujBi6e
         YWqhCGIOviSdGk7F+bFaOoEbNIuKlyhIPRL8AjBRh832KEp4nxRESkiy2NZK4IwpATFA
         ctDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714399700; x=1715004500;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZgN/Q2xaGtKT6vvkSTDEzO9awo6/5voQRCCnxevwdKQ=;
        b=c7XiyzzkozEb29ScY4/BXuEddVLA5KUUXGQQysWcuF2OCtROWPV9pFWY3Dcytktvnz
         8r2fDWt5WRU/0mWc9IeNgGbFoGk2LpXv0vEae2+8Y0ziOv9Jvv0yygxNRpqGod0kIe0z
         I9QhICN9A5hxB/xgmf/zYKzEax5ID0v/EpX6+grt3v5s2bqc8aKdwyVGlpVbTull4FZy
         wkQ9/YiX0fTQ34sPrVhRuTcXX8LIiy0mkyLyYP5Rdz+JnnKT+HPst+zwnREOtSvk8uqt
         n7a8A7CQvQchQG1qGoun0ofz3q5HMh890sk1yXn9RAk0+xibkZRypE1hRd6DFn/vblap
         7HpQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8Ow6KbyALYJ+Yp9toUkYhEd7rq+wgvQuayCWaT3Z+LJTjrXsEdEewODCMz1ChTOkBrRtGNVkVmTZZ0JdiXexpzC626KUcjy7v8Q==
X-Gm-Message-State: AOJu0YwRqBXPty056fl6QKu6P4vUL35VycoHFiCH6KOM8qU5K4bW2VyG
	GWdmAinrsVqOfSh9LyIqoSa8P8xE0Gz32YS7wzqpLXl0xChJtHoawNl43/kjwEQ=
X-Google-Smtp-Source: AGHT+IEYOKVhPKai+Fa1uXLnecUJvyvuyl4SsHgSfkU/MZ0kr1joJET/wbdjmxnDeMCyPvAKUbffYw==
X-Received: by 2002:a5d:6306:0:b0:343:efb7:8748 with SMTP id i6-20020a5d6306000000b00343efb78748mr6534087wru.66.1714399700400;
        Mon, 29 Apr 2024 07:08:20 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id h1-20020a5d6881000000b0034615862c64sm29585477wru.110.2024.04.29.07.08.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Apr 2024 07:08:20 -0700 (PDT)
Message-ID: <ebbda69c-63c1-4003-bf97-c3adf3ccb9e3@freebox.fr>
Date: Mon, 29 Apr 2024 16:01:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Marc Gonzalez <mgonzalez@freebox.fr>
Subject: [PATCH v3 0/3] Work around missing MSA_READY indicator for msm8998
 devices
To: Kalle Valo <kvalo@kernel.org>, Jeff Johnson <quic_jjohnson@quicinc.com>,
 ath10k <ath10k@lists.infradead.org>
Cc: wireless <linux-wireless@vger.kernel.org>, DT
 <devicetree@vger.kernel.org>, MSM <linux-arm-msm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Jami Kettunen <jamipkettunen@gmail.com>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Alexey Minnekhanov <alexeymin@postmarketos.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Work around missing MSA_READY indicator in ath10k driver
(apply work-around for all msm8998 devices)

CHANGELOG v3
- Add a paragraph in binding commit to explain why we use
  a DT property instead of a firmware feature bit.
- Warn if the "no_msa_ready_indicator" property is true,
  but we actually receive the indicator.

Marc Gonzalez (3):
  dt-bindings: net: wireless: ath10k: add qcom,no-msa-ready-indicator prop
  wifi: ath10k: do not always wait for MSA_READY indicator
  arm64: dts: qcom: msm8998: set qcom,no-msa-ready-indicator for wifi

 Documentation/devicetree/bindings/net/wireless/qcom,ath10k.yaml |  5 +++++
 arch/arm64/boot/dts/qcom/msm8998.dtsi                           |  1 +
 drivers/net/wireless/ath/ath10k/qmi.c                           | 11 +++++++++++
 drivers/net/wireless/ath/ath10k/qmi.h                           |  1 +
 4 files changed, 18 insertions(+)

-- 
2.34.1

