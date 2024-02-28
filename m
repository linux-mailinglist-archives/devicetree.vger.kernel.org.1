Return-Path: <devicetree+bounces-46859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B689C86B043
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 14:27:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 54EC2B21DFC
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 13:27:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7104914E2CD;
	Wed, 28 Feb 2024 13:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="c6vivi/K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4C93BBEE
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 13:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709126839; cv=none; b=fXPkrlDQnC8czn3Gbd2tOM2r3jFM48HNkl4OEomwb6SYNTyC302lLlBjaYqAnnrhS55ytgYuQ/NrPRA8yMEZPovg63Lyc6yjzKbtmF8srBX4MtXjXl9KshixcugYMP+HMQns2Kspcq2T5toHTGtD0BO6N+yTKzbKQ+8YkBc2tsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709126839; c=relaxed/simple;
	bh=k9bVZ3kA4rB+0h80Tss2U3ZJwcaltyNaL7Y9uPcN1rU=;
	h=Message-ID:Date:MIME-Version:To:Cc:From:Subject:Content-Type; b=pdSV5CUbZcGdwGGqf8Ki9zLveWkbIsrh/hsDn7ULkPSoYzlUbmYvKfuVYrONbPtjXTHLcuuX07mIbCGmNvN7wmMF/LGbmz3t3CuqwaPAoovKiCbG8TLyF54wiATJSlxEh+4xu8mZqeM2Z1WT+2TBAAcV5GFzWskpuIQGEl2wWc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=c6vivi/K; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a441d7c6125so31109666b.2
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 05:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1709126834; x=1709731634; darn=vger.kernel.org;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VfMmWTgZMkFzOQ84rBI1O8Mjtlt3aSPIt7WclmK5EyM=;
        b=c6vivi/KuY4M3RKLKwqOvqirl3ya74m/SPZlSsX5p3mB7YKAtzePZfo4Ssk3071CJQ
         oPE0WP3C9n3OSmgp0SLhiC5n30RgJhj+ZSbEbI6QfgZu6lSkVwFj+oHGDjf/hcZwGL+8
         Ey8jShvoU6jzyU7fypVLvaDjRJC9KOKtCojBX+pegVhxBOco54xMCdXYz2km1/MX7iO3
         0l9Ql6Mo9X9RAeeVzrpRh2CuYtv42tbwUtFrUIWAnqNXNP3uive1clOfDnxoOjVqKulT
         RxutPo0KUnoj9EnHzHOU21vyqA7o/hem4IOTywWEhAHQQGO7hdM7prZUWdj6e3FKTvOB
         p/dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709126834; x=1709731634;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VfMmWTgZMkFzOQ84rBI1O8Mjtlt3aSPIt7WclmK5EyM=;
        b=Ilt/iFG5a4ep3wibCpcwtM5NDA5BvR8pW/xILOs4moU3V3uAyz5aW8CT3bXSPc3Rj+
         tiqoCLaSGc22yjqmZw4p2C8xIEz6R5rfdRhBjaOgsEwausVg/a6ShFkWO2Xcgty8BrHn
         o+mXmiKDoxAnk2NGLOijj7ngkuWdqBFP8JjUWjbvDNF+3uW0udwF02lZjLKvFU50Q49p
         TIM8lEaNNjt+Qz1BtvOcd8aU5hDgMArlUQGyqcNlxzgrAQMWXh76NMq0np2bb0keMGa9
         dtJ5EoTRONARTz7IF5hrErbilfJ1QX0Q1y2f92U5ED8I3DxaZpuI5wwWHeoMyZ/HIbxS
         ebOA==
X-Forwarded-Encrypted: i=1; AJvYcCVhJ3ebnArVEx+j2CXMVPIylbZ5sQ7rjin3nyNJDeiijr6zaCQ5pkbDfmBga6tEk+d+3Yjkj+bwNsndd5Q8S/mO3PM5T8olO9Mkfg==
X-Gm-Message-State: AOJu0YycHFpWBi9p1Kdj+eQqDpzyZHekzvbsEilfnKncC1H/QXLP+TDz
	1dLv740YfdbJlqFNBuDXVJyDKGfNGjiJ/gbEnZGrGzZYbBGg1twYWMNbPLdCc/c=
X-Google-Smtp-Source: AGHT+IFDAu3EqnpC63S4kTkkbsELa25krrM0BKosxQQt0xC7xm7jBDJI38i+X1Tmt5nQTnzNOCutdA==
X-Received: by 2002:a17:906:4f0a:b0:a44:1be1:66f0 with SMTP id t10-20020a1709064f0a00b00a441be166f0mr348811eju.57.1709126834471;
        Wed, 28 Feb 2024 05:27:14 -0800 (PST)
Received: from ?IPV6:2a02:8428:2a4:1a01:6dfa:263f:dd7e:9456? ([2a02:8428:2a4:1a01:6dfa:263f:dd7e:9456])
        by smtp.gmail.com with ESMTPSA id s6-20020a1709060c0600b00a42e4b5ab00sm1839417ejf.41.2024.02.28.05.27.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Feb 2024 05:27:14 -0800 (PST)
Message-ID: <14daa98e-7fd3-4ebb-87bb-5d2c1fba679f@freebox.fr>
Date: Wed, 28 Feb 2024 14:22:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Kalle Valo <kvalo@kernel.org>, Jeff Johnson <quic_jjohnson@quicinc.com>,
 ath10k <ath10k@lists.infradead.org>
Cc: wireless <linux-wireless@vger.kernel.org>, DT
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
From: Marc Gonzalez <mgonzalez@freebox.fr>
Subject: [PATCH 0/2] Work around missing MSA_READY indicator from ath10k FW
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Work around missing MSA_READY indicator from ath10k FW

Marc Gonzalez (1):
  dt-bindings: net: wireless: ath10k: add qcom,no-msa-ready-indicator prop

Pierre-Hugues Husson (1):
  wifi: ath10k: work around missing MSA ready indicator

 Documentation/devicetree/bindings/net/wireless/qcom,ath10k.yaml | 8 ++++++++
 drivers/net/wireless/ath/ath10k/qmi.c                           | 5 +++++
 drivers/net/wireless/ath/ath10k/qmi.h                           | 1 +
 3 files changed, 14 insertions(+)

-- 
2.34.1

