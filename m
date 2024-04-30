Return-Path: <devicetree+bounces-64059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4BE8B7BC2
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 17:36:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB1881C243A2
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 15:36:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B821171E4D;
	Tue, 30 Apr 2024 15:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="gR5rHT60"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B52D9143733
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 15:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714491318; cv=none; b=WU+p0hao4OEepJO2zslgzstBv84WgqlNcHYtpWlice+Arwhbb+OPNm3H0ASxtlNhyPk/URfKSSCFhPvDbVN0OFok8bUBI7JbfZZah4goVLblo+U9ltBya4Gqq8xjKYcleLdjdUsvuQd+BQyT4+0OLZ9Sot5n17D0D5F26wmOJEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714491318; c=relaxed/simple;
	bh=cnERhQN+psqBArfbsUuDM43qjdDKzTKRv36HTHjehz0=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:Content-Type; b=S5rO8l3UdqXaAvWLv3ZvTK1dBI1RF98eBqxyW5RDKLXCa19t8BKbcPDNHrc1UIhNqExGuXT7+/ygxfsqzOBPV6DFa/26AGzqoWjs2NfdwV+u12kTtzRFRQn51HACiNXYHnRipzKVa7rq7HLj0Gm8lL3cHW/BTsO4/MAUDDFNzA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=gR5rHT60; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2dd6c160eaaso71394541fa.1
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 08:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1714491313; x=1715096113; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2c9rH3JeyvGKQdDSVVVx0PhRv40r9PE97KLjHmXfjCg=;
        b=gR5rHT60Jj2V51q2Cp+q58BmddwhPsV6gSjHWqiKSP+WnrOIsrdnAM2z8QnmMONb98
         W5hORwssgO2fVzaWBsEXUI7h4s69VHf0v1qCQV03PwAgQj/wYpWjbQmZVfk8lzhiZH0u
         MbvllkJy46868rtIBIiY70/VKUra0yjPmn7eNIND3aD8FaLTeMoxpY5vHMHt97z1yuK3
         pWoBuQo/cRQ1E9/fdJySMaZiG2GlI2TohEYgM4KUqn8EMHkDocVA0Ye9Q/vl4HBhKtn6
         juVC4uhv9q6WFpUYTXp9+VwTGcnf8swAsngwamM8zgb9nV3qFMfVKlS9Fe919EmMfj3+
         DP4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714491313; x=1715096113;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2c9rH3JeyvGKQdDSVVVx0PhRv40r9PE97KLjHmXfjCg=;
        b=Mot84WRLF8DIzOoc3aCzTU1HxIg7ze8N5e7XUjykHjrKZyCZuuf1LmVKJnnfPS5NH8
         bXBUxz5AzCFMITs6moeY7voj8PrOpaYe1fNtb6zPMgJX3UCogw4wUbeaJJhYoaaees+z
         jjEgl4uKak2W7rjKXiRUFKOMXUjDeUYUWNe3W5RaEkVf6pTE2XXwK00TYIYgb6qCsfxR
         x2KxAFhdeOPET0FvQL1pr3qrR5XWdXGbf5TAB/pIV6XNBtMoIPzstOt+2K5G11gu0Fmf
         woIE7i2mAVXlzJroo2ehYeCH1n8ChcYoLDmOonuH4U3/vWpMkJ1eQMj/qimpBYZXzOVO
         jitw==
X-Forwarded-Encrypted: i=1; AJvYcCW1Y/zQEU7FnWxa6lEJE4oem9YKw7JMrEjTIOA+ejWyhnOBDJPwTJivCnHd2KpTWPZoUEBDuIMSo3Lcq62zYuuKb2r5uBQll90oLA==
X-Gm-Message-State: AOJu0Yz4qguoY4d3UYh3Sz5Q4x1ctPNu1wRrholLg111Ez2UtUnll13e
	y+DKPIcp5r5y+RSRah2WDK8FtjqmuNq/HIox0d/WB9fQh6egiFBN6EtvWtQVOvVyzRbiH82zdDS
	J
X-Google-Smtp-Source: AGHT+IH4FyszgLVd5E8UC44LgcvddxJsdBSvb733jfv+WHaa2WIHic3JGHRXMCNJwvDMKXzwCmXWRw==
X-Received: by 2002:a2e:8682:0:b0:2da:b1fc:7b8f with SMTP id l2-20020a2e8682000000b002dab1fc7b8fmr64095lji.9.1714491312626;
        Tue, 30 Apr 2024 08:35:12 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id h13-20020a05600c314d00b0041ac4aafd3dsm27045674wmo.12.2024.04.30.08.35.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Apr 2024 08:35:12 -0700 (PDT)
Message-ID: <ff646f97-68e3-4fef-9b56-2bd98f0cbe7d@freebox.fr>
Date: Tue, 30 Apr 2024 17:28:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Marc Gonzalez <mgonzalez@freebox.fr>
Subject: [PATCH v2 0/3] Add support for qcom msm8998-venus (HW vdec / venc)
To: Bjorn Andersson <andersson@kernel.org>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Bryan O Donoghue <bryan.odonoghue@linaro.org>
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 linux-media <linux-media@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Changes in v2
- Add Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org> for patches 2 & 3
- Replace qcom,msm8998-venus.yaml (copy of qcom,msm8996-venus.yaml) with item in qcom,msm8996-venus.yaml

Marc Gonzalez (3):
  dt-bindings: media: add qcom,msm8998-venus
  arm64: dts: qcom: msm8998: add venus node
  media: venus: add MSM8998 support

 Documentation/devicetree/bindings/media/qcom,msm8996-venus.yaml |  4 ++-
 arch/arm64/boot/dts/qcom/msm8998.dtsi                           | 48 +++++++++++++++++++++++++++++
 drivers/media/platform/qcom/venus/core.c                        | 42 +++++++++++++++++++++++++
 3 files changed, 93 insertions(+), 1 deletion(-)

-- 
2.34.1

