Return-Path: <devicetree+bounces-149865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE15A40A55
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 17:50:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B8F817F7F9
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 16:50:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE4AE205E1C;
	Sat, 22 Feb 2025 16:50:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zwQxLk1w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A351F0E44
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 16:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740243046; cv=none; b=VW7YYWhnjBYtUJEVqvOfKynxNfAY8s1Ctjw2TsRGcJQI97SUJ4nT2GzZ/pGkNp5quEIbr4rH9A2gn2uXsHpTDXeKwP+kDjCd2dscyfs8Cynw1U1Lk8zvwz3WhHX+scZ3vnycgJAAcAHS7qiRtdvNVLXSxtxpQC1p/4b3JLnOrDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740243046; c=relaxed/simple;
	bh=/OChm8Qzq++h2Z0XzJa9A1Q8OC0xJGEjGJZCAa2C5lo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Tfnsou+yZVKeKwVYWQRWHvhpJdzQ4ZxDtlNU2YeOuBeXUA+tMl8vhkT5kp4DmPXsxe4w3x1U+yadyXHzbJcP8iIpmMXqWYZXJoyQS7Qd6IfCpktv+OpmlL7AzoNLpwwcPz4zZzWha0xV024KRUd0EUP5x6qldkye2qSydmzy8oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zwQxLk1w; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-221050f3f00so69970425ad.2
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 08:50:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740243044; x=1740847844; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Nh3uPvkc34gfmbS9x9Jf9cyF6fwE3/AJhfsNKJ7Ug5s=;
        b=zwQxLk1wHPc+FGHKgpyd9Mqngre4hZA3l5IC6WkbMOzm7rqF6cegvD57PfKf8k1L/T
         4t7bZoVUKaeFLZQfsepgj0Fe5rVDtLOv2lzIQXsuNvaoSDAiv201gTdcAHgITHw5rkj9
         ypqa2UAHKo6B92bCG0nuCjD2nQ5HgfCvbkYdJ+cahdmys/9LbBGGl26AZsx1wjGxKHjN
         goEnh1Rajslt7LwQXA6OLXS/DUWtEkJR6MBlh/2voNStEyHRK2LQ0OTXPdYHTMOyFxag
         SIiyhWtBPtJPEni9kr5/NTimAl6mc54jLfPUZFPwa9aBm7nir8sQBeiYgTZdGuT0/iLn
         r38Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740243044; x=1740847844;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Nh3uPvkc34gfmbS9x9Jf9cyF6fwE3/AJhfsNKJ7Ug5s=;
        b=jB02ovn0gPyZlLmZBTgF/qAYNCpdZcBKjkxMLhDjEJRUMsc8F7e9LXB9ilVVhdZtMG
         vGspJYQP7FhO624Wbpcgl/M3KUnZgwsGAoz4SriBadpze4AfdA27dMhrSLwf9zkEH6rF
         JP42EijjZtvZ+zTpJuICPnYfc0pd5j21pLZe+opeXU18wDFsBBppurdbA9+kt2IyNmvX
         z2hBY6WwqlQT0yW/m2h/L8nzygVP3dSxaR18MYOGjjQZTl4SyviN8WIa1X4USoz4dqrp
         kDFUl7S4ITlWs96wah4bUKZB+QxL8yHcZE/1p5zoXDk54QipuPCZHMREykbfAAwLHP2I
         D6eA==
X-Forwarded-Encrypted: i=1; AJvYcCWAecMN4V8wuDRobsCF0N2wx2ICV7s9dNIQP5dei1rX1Ye91IrQ+4qRpj1NKP8DCn84AfYwr07RL3/C@vger.kernel.org
X-Gm-Message-State: AOJu0YzSGhvkrF1O0owMt7Va2ccrrru/JiOqsyClddISNNZnHQF/lOtC
	nMBcThsx4mP6C57T0u3eKeJGckAh9Zizw7HOX4psMcPEUOOQmqfblE3dI1OHKA==
X-Gm-Gg: ASbGnct4d0yEXT2gPi2LqgQBHpn9I99tGjV/mGIpNSqjglcAO3w9LzFcLCtjNQ0VNId
	EjxfmocWDPypYftSUAHMv10TfOeQlwj79/Uzn9bIZxZ27r3IGaaim7T+hqLB5M/rQjK5qGpKCKp
	xynAsVCXo5Lp6YrWulHt7MEK4wgUao613HGAbwh/+Ewmfbpjo6eNSG2QKoAt/UGeEiRXUKLKC+n
	ZXt3hD+DH1ZvvrisHxZ3oHKx1NqGO347PiLOllCfJmwS0QBV1gIARJMbrT2nnG4u2d2xQsasxAd
	mQxGyrJKZVxL0izi1rbbFL0nv1OIfnWt5b8mSw==
X-Google-Smtp-Source: AGHT+IE+8VM4q3PcS+7asdjIzH29CbmnLh7RVggUoKvA5I0EZzfah7IwjW111tGxF+X6VyOekWmPqA==
X-Received: by 2002:a17:902:ea08:b0:21f:988d:5756 with SMTP id d9443c01a7336-2219ffa35c2mr127317725ad.42.1740243044225;
        Sat, 22 Feb 2025 08:50:44 -0800 (PST)
Received: from thinkpad ([120.60.135.149])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d53494cbsm153853295ad.43.2025.02.22.08.50.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 08:50:43 -0800 (PST)
Date: Sat, 22 Feb 2025 22:20:38 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mrinmay Sarkar <quic_msarkar@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 6/8] PCI: dwc: pcie-qcom-ep: enable EP support for
 SAR2130P
Message-ID: <20250222165038.eyausqiccrivkv5t@thinkpad>
References: <20250221-sar2130p-pci-v3-0-61a0fdfb75b4@linaro.org>
 <20250221-sar2130p-pci-v3-6-61a0fdfb75b4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250221-sar2130p-pci-v3-6-61a0fdfb75b4@linaro.org>

On Fri, Feb 21, 2025 at 05:52:04PM +0200, Dmitry Baryshkov wrote:
> Enable PCIe endpoint support for the Qualcomm SAR2130P platform. It is
> impossible to use fallback compatible to any other platform since
> SAR2130P uses slightly different set of clocks.
> 

Still, why do you want the compatible to be added to the driver? It shall be
defined in the binding with the respective clock difference. Driver should just
work with the fallback compatible.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

