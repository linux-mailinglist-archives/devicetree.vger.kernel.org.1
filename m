Return-Path: <devicetree+bounces-130401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1059EFA25
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:58:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 22AFD169083
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 17:53:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 954F6216E2D;
	Thu, 12 Dec 2024 17:53:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X22hr0hd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0409205517
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 17:53:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734026008; cv=none; b=DbCx/Vhgdfq2v5mMLLzO5njF4A8dpGmMdR4gIagGTd/RxydvJXI2/TLAGa6omO05g9WkuP3agxDXTwOXkBVwcwJv3y30Z4a2MZtq9cUsOGyeEp7Wt3od7z6yzQ6YobojNt12648deK4tYMsY8fzLxPln6+EFuwFSwmMx8HxYR1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734026008; c=relaxed/simple;
	bh=L1WIsAN43K0HrWyRNBVugjhyMqQIDDcbptHMdI9LmpU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XDKoNV8p0ajPKa59qN9HjzqpNnpVlkVcz2n3gyjqwx9niT13+zv8fbA+nVUOjzombHPDPGFdbG46tfuo33S4baiECUA7MoYsgktJHDxUpKtRvkSSqd+8CfzCMxwOCmUO+wUhcT1miDqvAmXLvhkftruo/kZo0y6PGSMg+WcBrsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X22hr0hd; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43621d27adeso6734915e9.2
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 09:53:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734026005; x=1734630805; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iS6863oeUmKqOBJ6Lt6qSkxo7yA97VcWeLWD1WZrtzQ=;
        b=X22hr0hdNd8aXkUVp+WtJyUuzD4SAipx0uWml0HIhp37uoHN76hJOm1PkKx898H2w/
         7pWgVgGFjRJDZowXkPAZge6dDSAXNAGAS5vHMncu2XfChzY1QiZcfQaT3y+k8yXe4WOJ
         8WX4zq//cG8wYCxTXnRQ3ytQAlgWZtky/xsIlUXuya2BGRT5C0XIdZ4+1qy1iGqZdXXN
         vjYVmH3G8TSXSC2mGeQiyzsErJniuvFleapuTJGfYdCYbrlsVRmK12R7jjTMFdjOYpdx
         UxXtORCSPqrvpj+/CO1xq1sXANZazkQKCY5xnugZngI2DqtEbEsMphu5lbMvLYW0/Ypv
         mIXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734026005; x=1734630805;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iS6863oeUmKqOBJ6Lt6qSkxo7yA97VcWeLWD1WZrtzQ=;
        b=c1tKRBD0Wb4oC81PdOvgCJFoGp0n3E2WvZcvWzlH3OiKPKc/k+CYIimybJnVF2jXmE
         7zBQZO9VhHbODG/stXGmrs/udfb5Vyjbh64ufgFU6xtIheA3K9dY8e3gAOAxaYENt3j4
         ydOoy8fsshK/D4OJCgdh0NOxsoXai6vQxLxUmbxG1PzuAwP5ZxsitjI2eln7DH0xGQGl
         tvzicJAMHXTuVhmksXq9btnZkXYKf08YzXbcn9t6I0nU290ZW2HLkFdyxs1I2oeYQDUl
         gAjGwtRegoUSUZX3kZpXyJab723WDjjGzvIk/uRBEyU6fFe2V6440299TNRJp1amRpk5
         4vCA==
X-Forwarded-Encrypted: i=1; AJvYcCXSPBK/IH5VBgMU0vdrtbXN9J4iFpP7znLNNTw3/ndFw9kpfTA2N22d35B04Sbo99exTj0WFNdpOYzq@vger.kernel.org
X-Gm-Message-State: AOJu0YxG7mD7XPB72ZJv4uhMKSNUxpp1BJ8LTVY2/bf3FtspM9okstOR
	mMOcNFmnelbUgApgQfGnh8axpTLtNbOBBJLQKYEPCJpVmpe3ePvx8XpgJiTMs9w=
X-Gm-Gg: ASbGncso9H7WM8zVW5iu8C8ZgmGgbnGpf5JE6z8pUF9xxZ28OupG6j9oQT7gfVI96xX
	vdXFdmq0zhXko60D7AxyhFQ9W2HVaRkwoQWp3NFyFIWFzfAifnhpcbhr9/kKbwRI2IxdylGs203
	ijMEG/O5goZ/WXU7DX+OIzHU3Xce70cRXggH6+VDWnddDtdKPbjaWODuRmZeW1WTzDsolETcJm4
	5C/AxOaNOu6/ooCH/GrBVTg4RlRYT0+vIr8lfpPGmGm7xj+KxMSoBg9RUwvitvr
X-Google-Smtp-Source: AGHT+IFRGvN+/sW8H26flYvrygsp+C9djqkNOUFxuOEJhm3v18/iBNpicIZcLpwU/7AIFCb9hRvAuQ==
X-Received: by 2002:a05:600c:1c14:b0:434:ff9d:a3a1 with SMTP id 5b1f17b1804b1-4361c396c09mr67357115e9.2.1734026005162;
        Thu, 12 Dec 2024 09:53:25 -0800 (PST)
Received: from [192.168.0.14] ([79.115.63.27])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38782514f29sm4767900f8f.77.2024.12.12.09.53.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 09:53:24 -0800 (PST)
Message-ID: <90720b8f-340f-4f27-ae51-df98b2e5e820@linaro.org>
Date: Thu, 12 Dec 2024 17:53:22 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] dt-bindings: mailbox: add google,gs101-mbox
 bindings
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: peter.griffin@linaro.org, devicetree@vger.kernel.org,
 daniel.lezcano@linaro.org, Alim Akhtar <alim.akhtar@samsung.com>,
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
 willmcvicker@google.com, vincent.guittot@linaro.org,
 kernel-team@android.com, arnd@arndb.de, Krzysztof Kozlowski
 <krzk@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 ulf.hansson@linaro.org, andre.draszik@linaro.org,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20241212-acpm-v4-upstream-mbox-v4-0-02f8de92cfaf@linaro.org>
 <20241212-acpm-v4-upstream-mbox-v4-1-02f8de92cfaf@linaro.org>
 <173402453635.2828943.15564980222849076434.robh@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <173402453635.2828943.15564980222849076434.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12/12/24 5:28 PM, Rob Herring (Arm) wrote:
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/mailbox/google,gs101-mbox.example.dtb:
>  /example-0/soc/mailbox@17610000: failed to match any schema with 
> compatible: ['google,gs101-acpm-mbox']

ugh, I remember I fixed this, compatible in the example needs to be
updated to 'google,gs101-mbox'. I'll send a new version tomorrow.

Thanks,
ta

