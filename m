Return-Path: <devicetree+bounces-196488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADF4B058DF
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 13:32:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DCE783AD659
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 11:31:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD21027464A;
	Tue, 15 Jul 2025 11:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B+qaOCaF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1EA819D09C
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 11:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752579105; cv=none; b=ol7lTRFB192LT5IkT3Nu7H43AmzeyTwKAO5pjxhM3qx4TocN8rTn/B7yk6/HMdYTAkJxUfXzYES2BhSfaXUkFFdZzj9niUuV83UQPZL4Yf8PjxlaHKNUSisI6ord4LDaoy7o3FmBohrZYb001HQmQHidV53szAUQuusxLlF5kVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752579105; c=relaxed/simple;
	bh=B1i0Jy+iCmpT+TMn/plz7n65ehc42gy7Y3dHtaF5bWA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZsUV/hNkQWIyvbdTSPmZ7O2x0mD+hGxnDFe/yB1242AIXlTU8jT95WYSKbEozCpGNKaJSACio1TCKqRpzfHDMjYtnDdCxyvV3j1rf2FD5HxEzIXPvkewgD4X6PU2Hr6dv2ez0PyiJGSlFqXN2ZK9dzoUUQi/YnyhwYE/K8i41+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B+qaOCaF; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4550709f2c1so26201365e9.3
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 04:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752579102; x=1753183902; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5ZsnxPQOlzjyNW6a1iVcFG50PC2MlOpTArybpzvfKj8=;
        b=B+qaOCaFm3Sm0HWodh8FZLR3fJzakOEjjy8BcWhrMsAjxlXM/qJQFmHbdluSe762Is
         xuOyuRi3flfn5XjdqAoHDJoyqGBke08wj0NxYI8ZUweuAtpVBHnmvgVfEtC19wtJ7XTr
         mv+KwqcLi3RKqM9tFD6jNjYPTsSVWO3dwv/ojPc2zCmxEjrjNL2ETgrjZY8cpV/IRGTa
         JB4F1KMjRKihuPFXgzY8ws1k3Dv3/MTrFFwUksV8pTgH9lkGzD5/KWawxJw6/gVlxgXX
         UD8Tfg55+PZNInVw9NpwrwgmI4M4dls71AciUNnXOUvXW5GYxnHTYKqVJpVqw7vkpf1d
         sY/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752579102; x=1753183902;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5ZsnxPQOlzjyNW6a1iVcFG50PC2MlOpTArybpzvfKj8=;
        b=t3ApalhGuTRXZOrbWKbt+WBUFeiikg4D47ELCnKBuaUBTlosOrC64sY3BBhebo41tS
         x8Rg9IJAWE0KCzt6GZE8KBBMNK+4kYOIYqU9Vk0hiv+5JVuc8Q/EeM2r5QGYGA2jDvCD
         1bIkAWLnHC3EdG9JLPBkaliHEmsujWMj+nFJ6jSl6WUT6JDsSibZlpU9zBNcWy2/QEKt
         HxnldqXSD9MUSm0yOdrDF9XP6zJX5pbraKoOMRtd5z9tBsnRAo18fkO+72P8Z0OmEhWu
         sPc2clxmOfekLUBERYDFFy9QmxzuqozHQIQQYVC5e3KESgjy5njB4b+4+ORrzrRtqe20
         I9/A==
X-Gm-Message-State: AOJu0YxzAS4o/h758ND1EU712ls09uRqk8K9uG9hkfjh4drrcSxlSI2b
	httOqWqhJ2Ep741KVxP0SZobNlDXuSGFRyO2cNfinsdKoSC7Q0j1UlmeWNSmWBNb5Dg=
X-Gm-Gg: ASbGnctNhtrMM+4GxhdYDcJFdbzujsY+zSlBGgXjWUt4eGi7FWkSkGonHimtduPy2Wg
	bt78iGt87ZvxuOL6In6/2slRbZmDN6B6z20vyzuHj5OX+K2C2CckLzGadrtMlybo2nrOPNsBwrg
	0nYfi0YATSLU5Ta+uqtfXYmTKMBOgnyYlrBRADFpQNSZAObFrIkkmDnNm4rvpuVU5Me3Oy8oXvz
	3jlkw4SjIHuaxVE7fo7Jvcx0l0sK/FiTSrqgQSDGsoPWNYcjppXIDqndIeocDzACnf19ElNDtCN
	Cw2D7fFupRUit7G2AFjnDHweDHY8IbGpBWTjcXF1fZZ5tTGZ1YCLljomsgasfoqGXKDkj+31kha
	2YMVNPmBF1aucqjovzabDvZP4nrKqhTXwbgOIgzfNgSYTH92qJMDenjrt9LXK
X-Google-Smtp-Source: AGHT+IEKhxXOiGy+rRPRZDHvcFkEUJsQ0d14+0tBKDdlW4a1Tc6Bru+r7zuXvqC8THzAs7ZRIPDvKg==
X-Received: by 2002:a05:6000:1446:b0:3a5:2465:c0c8 with SMTP id ffacd0b85a97d-3b5f187a4b4mr14608177f8f.7.1752579101919;
        Tue, 15 Jul 2025 04:31:41 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8dc2025sm15173960f8f.31.2025.07.15.04.31.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 04:31:41 -0700 (PDT)
Date: Tue, 15 Jul 2025 13:31:39 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, qii.wang@mediatek.com,
	andi.shyti@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, matthias.bgg@gmail.com,
	gregkh@linuxfoundation.org, jirislaby@kernel.org,
	tglx@linutronix.de, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-serial@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH 1/3] dt-bindings: timer: mediatek,timer: Add MediaTek
 MT8196 compatible
Message-ID: <aHY8Gyo5uy8P6VP1@mai.linaro.org>
References: <20250611110800.458164-1-angelogioacchino.delregno@collabora.com>
 <20250611110800.458164-2-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250611110800.458164-2-angelogioacchino.delregno@collabora.com>

On Wed, Jun 11, 2025 at 01:07:58PM +0200, AngeloGioacchino Del Regno wrote:
> Add a new compatible for the MediaTek MT8196 SoC, fully compatible
> with MT6765.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---

Applied patch 1/3, thanks

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

