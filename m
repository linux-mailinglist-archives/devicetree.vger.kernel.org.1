Return-Path: <devicetree+bounces-234743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D902C30347
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 10:17:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B235D3A5C56
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 09:10:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAEB530FF36;
	Tue,  4 Nov 2025 09:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sRxC8ZhC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1D912C0F9C
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 09:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762247424; cv=none; b=JR6QBIIZxALxs2GOjBbK7wY/qEJ3uYu5ckZaNqB3D0fNkebgKzjao6d+P3lkBoHO0BQIghCGVGYVnElSxItcCTXVgGJz8zUmhJK4/aUd2MKb1EquDV/bUuYzJcpQLffhjuQXEHLJcBiGm5o1iNjmPvWJkMU5QooXxbAlXatoE8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762247424; c=relaxed/simple;
	bh=e+WrZa3ef8AdRcYId27XHT8jL0SxKU0LfZDZgv50HDs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S5UMnzmHsDcIiOsAfYaT5vE8nnwrIWSc3Ao7+FTLOizK2QCeyQyIivyV3iyjzEHgYSEkJLxdXtV78bdqTD1S+7a05YlCeTA00qM8NjJhtjCvh1qxCSSzW5ByffeYcPAtAYm5UXyPCSR/V5TLLC4P6mq9ZXNhXxfxZVcvLmBOgd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sRxC8ZhC; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-475db4ad7e4so20191855e9.3
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 01:10:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762247421; x=1762852221; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DpweAw5zruf0A8JomoHVO706aMoW4BuNB+DPtZgoR0c=;
        b=sRxC8ZhCitcb8jMy8baFppofJesOvJhYxATqmidj2fyLLKycALUDZWc/iwXFuV1y5e
         5vN131LXZfckyA3Z3Wf1z99UlavzxmGGdgmjTrHQ+jgWqjRZst/F5uYTwmqW8vNuoHsK
         3+OTxrNP9AF400wvn91K+4JrHGa0AMeWaVVst/yFG3l5tTYMENtM++/UBzftx50ZBUNk
         CCVe/5nhtOZRzDaiYcVBdWhD67lLgXG9frGXXkFG63/yIgCztmOnJ4NrDn+IqAMcqC3k
         pRHOHL9uTZ5tUJQlSaZWiO/ZqCQgW+44851/fIUZ1knxd1/56dNtWtZI/ZogAW0KIhx0
         UT4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762247421; x=1762852221;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DpweAw5zruf0A8JomoHVO706aMoW4BuNB+DPtZgoR0c=;
        b=D3g8hrzlpjizYG0e6J7LuqblO/cSExXvc5NMvGfLwK87TaYwHUUdO22g2fuoSG//fY
         6cvncaFNe2wmDWAngFuoHL6X7ExcB2eD5Pyox6uLZSrJOKI6JyMpOtTlHdUn9GxcCcyw
         r5WmSFMA1yjsVEi1HpPlesIie3r3vvEcLH6fm/3FWYcRovTLpS/qeOGJJqdhMeqh2RQa
         P9/2LwmKuZnD07yzOSwfvce5VyqLEOlsEuSbvh+1SqKfv4FMtkQcUM6NT+tBJKY4z2t+
         a7K6qUusASXVWhq5SE5ylODFP4Yn8mBrHa6x6Sd9d43CgFnfTG0kFmun7caDSk8atLn/
         av2w==
X-Forwarded-Encrypted: i=1; AJvYcCWqrxMYfZAc2Iwm8EsUiqhG22FMj1wQ605FDK/teudL3RQR3AtPiEHCvGue+R0SIR3cTUY0/bNQ8W0+@vger.kernel.org
X-Gm-Message-State: AOJu0YxbzNeW91WJjebuol3ICOAFQOrZ1kVwHlx+GWON1RUjeq03wZ3K
	y588lf9ZLgZSKEk+2uAZsevJncanHWkxL2XwDN31LLwg0G3qrZjEpb5Qkm1o/WaBxKo=
X-Gm-Gg: ASbGncsU8dlAbgTbjPpFMjCXnVlSebWqzGMth/hGdHKuno4CFcogJu+QlPyrSsuLkAy
	axjPDcFVOoA4Gs7ANwh3AVEB+ERu7cST4B+8vnitr1E+5LmJ/WW5JCWa47+v0sqTugh3I0p60TP
	4n1BpHhbFOmQFcwa5Z+srE9ZM+6zH8616XExM/bI94EMjxx9hywxtljBOS2AOmMHSP8C+bi+XJn
	Zr78HgKyhegygjbmPnBo2+t8ItQpZbwagGsx8XgNBUJCkGYItDnGNv71jwGZvspBBB0JuzWdDj9
	vXppCtrWmhynq9RNsnL93m2RQoMNwJxCiRUGP87ZrzK4gOfgC0An1AshxL4n+QbfRom8273Bwux
	dmXrPlVzGrmpHh9kyQw2vNwjIWPhP4/BLKtQqhfeNiOSj/QjrtYhdXCoLVZZ8mbnnNmB6eEQ2
X-Google-Smtp-Source: AGHT+IHCBO7xLP5BokKxzK7/sqIK85VXUnkSNyV6W821hzOhPl8zMr4wD6F/COlyyLObPR50tBq6Ig==
X-Received: by 2002:a05:600c:3b03:b0:477:54cd:200f with SMTP id 5b1f17b1804b1-47754cd211emr18406055e9.9.1762247421039;
        Tue, 04 Nov 2025 01:10:21 -0800 (PST)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4773c2ff714sm200016665e9.8.2025.11.04.01.10.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 01:10:20 -0800 (PST)
Date: Tue, 4 Nov 2025 11:10:18 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: Re: [PATCH v3 5/5] phy: qcom: qmp-pcie: add QMP PCIe PHY tables for
 Kaanapali
Message-ID: <2cdrb57borduwntzkihdikdrmnytibbtw7eyh6xjmyqi3yppyf@iwafnggbrnzb>
References: <20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com>
 <20251103-kaanapali-pcie-phy-v3-5-18b0f27c7e96@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251103-kaanapali-pcie-phy-v3-5-18b0f27c7e96@oss.qualcomm.com>

On 25-11-03 19:08:17, Qiang Yu wrote:
> Add QMP PCIe PHY support for the Kaanapali platform.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

