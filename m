Return-Path: <devicetree+bounces-177554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 937D7AB80A4
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 10:30:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 770B01BA80EF
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 08:30:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2296F289839;
	Thu, 15 May 2025 08:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QjHSl30S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C0D2882BD
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747297585; cv=none; b=YmfTHtJg7zWHaA1ASkUEDrap25xVI4EqspCEbS42KEzSKUCOn0jhPCu2+fjE92yaNJLku4BOtbmD4tP69J6MGq9TE1wqEjaNKswncyM0iFu+gc67CreTzrqaGage/i+NKmo+AOkNNAv4FMaZLpXTtJT9PET5o0ShZyFhMxfN1/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747297585; c=relaxed/simple;
	bh=ENrOJDgWFvKCQkM8U1+sfaS07Ost8oWCJy/AbU25QJQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qlB4CugFgfTMjIoQ8+kgwLrytKhHF9cMcDDFNwhofWK8L6ji5tqyyIUu3+fjLYixnG4VZoxN/C1hkN1KwhPIC3rp5E+Zz2zhilL7mmBMRPfoVy+fo2PgTDaDJ0iGyrbAftJePyjU88sBNxiDMMdIjBCdElBuhTQRKwwEP8+tQEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QjHSl30S; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3a0b9625662so541265f8f.3
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 01:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747297581; x=1747902381; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RZBT0B9JbAjbmvz5JEz72qClxMGhTZUJxqqtB//hBoY=;
        b=QjHSl30SYhCVFpoIxhyhJPZyyu0pOpqpO5E8fbLKd+dqDZoGNhRYYWkBxas2KiqJNk
         CcAQPxHusSLK9ehjxvxaIc7Dep8dBtKS5tYzvmEaswgZEtWFQFVp0hxVnD2AfC3iVWWq
         Oqg0fdp2zJu0BwnVHhUdHtwAM7fYNW2HpWcnjaIVRo57NmotAzUfGfozTdoAUugQbzLo
         0k++IioYPsa/VaMldshrKyM5SJPpROq0rHozLU05A4ut86G+Faa0vFwXWgu02JJAaDR+
         IKs5WkOBIjbnmhT4Whx5hVyg12uB+Utsh9tH6ss7Bm3Ut9mfZbGu/3Q8RDg4A3Ckv5+p
         H3LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747297581; x=1747902381;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RZBT0B9JbAjbmvz5JEz72qClxMGhTZUJxqqtB//hBoY=;
        b=ZoS8aeCY62aGm6tV1DnmfBzGVgOAlRogroH5opEWOSTEHASrJnXrty1q4FFqDt4i1D
         TMgUea7BO18IlzFCnRULdSh7D50NCZR43dfQDMNbAVJeRodpKm7I1PpOBHwSY+VWpVMu
         lP/kf3xWJc3xIWc80n5/WcS8ow99y1V/jv79eSN/soPaWsXvqhz+kjNBrNbKVu4srR4D
         SE+AdrIYwo7FC5e+s0SMV4LS3PjQFzp+DKlaLzhA0XeNhBBQYq/oKRpj8qAO7BPqLN0w
         EAmRZ2L9wvuSug6IjBNRfX9fUCcQsmkWxCgS3A1DveIpsvNL87psjBrMwMASpVttJIng
         rVSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVErtNpO+UbqhQOWQZPhneIoEjtNzwke54hMvQA295u9Fi6RFtcfX8ur+1m+cZRILdqgtd1ikfPhMTP@vger.kernel.org
X-Gm-Message-State: AOJu0YzjL2s0gUzlyfppHMV51jUCwBVtRPmDQTRU2H4gJcH/3VxDxyE3
	y6IjPHKg4rCIvbaTFbh6Ien6Emr3fuxP5myhGzu8c7guKVTJVCTPaho0A3PYpD0=
X-Gm-Gg: ASbGnctcWxMuGvkFH74hd30R3ekVoeghN+B8EvMrryoy8BfKM9qSc5gMnX/5/9+t2pj
	7MbY9KqItH3HTuC0ynZkSeCGPMlC2nONv3Tt9ZKBTKSkxMqYb9SzyTzji1hCNrKIXg43wJb7k9I
	ZHXNXHTb2nXuPa46DFiiZgoXeY/RQr96FcPoeN7TyaOJImb3ngb6pwnUlSvUT0o8vxn7c0lSYdh
	yMdX4ZN/rr+Re3GRyxb8llvoZl5H0LnnqtlqM1CJDh0bMRrkr4vQnOUHHgNL+rKPTHgh1Cx6y/+
	n3rlGMQfOTrc2a6VRjUmEzxBHi3V1LrMxJk3PR2JKJtPa7Aqu0Pnl8WsDkQ87gl5DVaXNtd68Iw
	zRZhl3dFMfYJu+NN6QYo7DmlF
X-Google-Smtp-Source: AGHT+IFutkGNvNOJLwoaYHsnazJI/e2XvuA6DWj8m8uba5Jv172Bohbp+P6ihvUbNwvbTK8YGNfiyw==
X-Received: by 2002:a5d:5983:0:b0:3a1:f6fd:63fc with SMTP id ffacd0b85a97d-3a34994b188mr5793077f8f.47.1747297581580;
        Thu, 15 May 2025 01:26:21 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f3368d1csm62594915e9.8.2025.05.15.01.26.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 May 2025 01:26:21 -0700 (PDT)
Date: Thu, 15 May 2025 10:26:19 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vineet Gupta <vgupta@synopsys.com>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: timer: Convert snps,archs-gfrc to DT schema
Message-ID: <aCWlK8H7PtSwhY77@mai.linaro.org>
References: <20250506022309.2588605-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250506022309.2588605-1-robh@kernel.org>

On Mon, May 05, 2025 at 09:23:08PM -0500, Rob Herring wrote:
> Convert the Synopsys ARC HS 64-bit Timer binding to DT schema format.
> It's a straight-forward conversion.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied, thanks

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

