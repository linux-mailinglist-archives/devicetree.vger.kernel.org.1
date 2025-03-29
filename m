Return-Path: <devicetree+bounces-161795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A88E0A757D5
	for <lists+devicetree@lfdr.de>; Sat, 29 Mar 2025 21:31:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C6DE2188EFF6
	for <lists+devicetree@lfdr.de>; Sat, 29 Mar 2025 20:31:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C16E1DE3DB;
	Sat, 29 Mar 2025 20:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zHUlig8P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ACCA1DF258
	for <devicetree@vger.kernel.org>; Sat, 29 Mar 2025 20:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743280256; cv=none; b=lUCWxjfq7Qwgsa+1T5/VIMWKRQ/OQcNGjATakprR77UtD39DojuVbCrrDuD18P/lBnigjDHBX3617lR4sckXLacCm3pK6pjZ9uZZ1TRjST9Osatxo3kDjpp1L/K6Ie782Fq3PqPjQhn4FxgB4VdnSretkLeDw8z+KVJWAP5LO8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743280256; c=relaxed/simple;
	bh=Yu8gx4E30LKjqkUeN+vwaFVnCZ1b49SThURUG43iDtI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h/FsIS3KOiLV1HVzuWlT4Bl/qDsOAEMZ6D5TbpYH+dLkrYaa4N/nK3fvYTFQg2jXVHNd0QJ/buACrP7D2O0lML5oLLGcE8Kuf06n53vDrNuWsu6eBFU+w8lMjzU8BT2Vh2Tj/CBzUF2xQp2BSABSZxOrj/joQgkzM4y2tk9yTVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zHUlig8P; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5e8be1bdb7bso5393999a12.0
        for <devicetree@vger.kernel.org>; Sat, 29 Mar 2025 13:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743280253; x=1743885053; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hcKHKeP7WWkzt6wllCWrZxsfdiWPO0K4X4xYXivfUlI=;
        b=zHUlig8PCOj8nQe6uPjQC6nHhMdUFTf+ChShlT0uLCdRdWcvQ5X/c+gxSB9HNPUVOv
         TCYSGlWYebTj7KG/hCWm/mIawJn4NZcHu8lDWoKWKqxo9XgGPULaWxI/hOSLQEZI+xof
         1OFxIu5CKrKWnzSaGUPjcfDzT6xeaklpSsouh2ywp5eQjrmpuo0Eza/L/SOCctzrJa3f
         mhVxlCpx1gPIYo+HAxssKA87mKDJYBjFBlHp+lmOy/CrKVk1TsJDkkki/jvdZYlUuSDA
         ubfvkoNYH95C+kjfZ6awNUmq7AH1IISGBivAnI/Y0lFpb/aK2w5DzM9MW8+u3ExjSJVL
         8vEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743280253; x=1743885053;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hcKHKeP7WWkzt6wllCWrZxsfdiWPO0K4X4xYXivfUlI=;
        b=tQDqoSKBKGpRLjkIgAQZu7GlyorMWqwFWWcdet1WmWQqqpcMCf/drw9nmIdJFoNYTs
         85OVK4u8Nc5YyJgf+yjv06XLpPDo/SPh8uCni/JrS4Euxyi0xQfMZCOuECaYzYMWYE66
         9gwU9h77pgA7Cv7feSZGYxr+VPTMkh2uK9Emqdlmz2H9x0U+38+nSZshERlTkNEb9O18
         UPwcEcVqw8ZaPKkFqGAM4kNgPNvhW883Y1XIgSAfFLG0z/mq3HrWDd8sbMC7SCDDiGtn
         KcoBSARo05U++q/7e1lYobReFmhb4tqNqgtwle85YSzjfZj2drSc+fMVNXhY6j7ukUJ0
         4aOg==
X-Forwarded-Encrypted: i=1; AJvYcCUk42Cu16PixDyG4tvLNf4E/ZDJN/eea4YFifhQZkNG7/7MVkHBfEWLKfMbT1wDs7nrAYB8XM/ncrlb@vger.kernel.org
X-Gm-Message-State: AOJu0YyLERnCC55sbq1P6cUSF3uTeVl992VN4i66Ie11bjao+1jRUw14
	8w0IC96OHexXIIUEFfguDvf8mjDcoTG7ebOBLBd/vPdGDpMw7x+3BtX+K2JYhfE=
X-Gm-Gg: ASbGncu9iNB9fLFBxMYrZhRZx7Yqct8RngUaIxeS73TDVHF/AZvdD6bgE04p9C8skj/
	OVL6Y5iGjtJusqX0ZlaLXaMuMOONSBXgsxW2zfdOrNQyxKFkVtGbmQNOIfgJM5biI40oYmoGF3u
	d4aDZXgwZzrkEdWXEeqgu+HGxnRyK+IWZnagFXa4b19O8uhtYvuovRtuvdOZrz1v7/TA9R9yr/z
	ZmLatGdGZdiCGH71xv2WZLuYbnNDl7GRn6KCMoWgtug+dQTf9FbW44uZv0uOjC4MmogiJRCgA/S
	E5lxlMHGw93yjJIiE6bjP3fsoV/OxuyAm2X1MOClBQ==
X-Google-Smtp-Source: AGHT+IEb6Ruea6hK6TV9vn2hpTxeIQDJ7rrjAnaoPPm7WZXIAH45MUutF4n7CxtI5vev0wjCTCnfjw==
X-Received: by 2002:a05:6402:4007:b0:5e5:c637:b69 with SMTP id 4fb4d7f45d1cf-5edfcbe9333mr3696024a12.6.1743280252884;
        Sat, 29 Mar 2025 13:30:52 -0700 (PDT)
Received: from linaro.org ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc17e04e6sm3377468a12.76.2025.03.29.13.30.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Mar 2025 13:30:52 -0700 (PDT)
Date: Sat, 29 Mar 2025 22:30:50 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Johan Hovold <johan+linaro@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dennis Gilmore <dgilmore@redhat.com>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: x1e78100-t14s: enable SDX62 modem
Message-ID: <Z+hYel7Cb2t4mMPl@linaro.org>
References: <20250327081427.19693-1-johan+linaro@kernel.org>
 <Z+ZsE1wm87GfVanE@linaro.org>
 <04ada91e-bf41-4be6-9021-96bcb781a40b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <04ada91e-bf41-4be6-9021-96bcb781a40b@oss.qualcomm.com>

On 25-03-29 13:06:54, Konrad Dybcio wrote:
> On 3/28/25 10:29 AM, Abel Vesa wrote:
> > On 25-03-27 09:14:27, Johan Hovold wrote:
> >> Enable PCIe5 and the SDX62 modem present on some T14s.
> >>
> >> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> >> ---
> >>
> >> I don't have a modem in my T14s, but this is based on the work I did to
> >> enable the modem on the CRD reference design and the T14s schematics.
> >>
> > 
> > What happens with T14s variants that do not have the WWAN ?
> > 
> > Is it OK to enable it on those, HW-wise ?
> > 
> > (Hope we don't have to split the devicetree again, like we did for the
> > panel)
> 
> Unless Lenovo planted something else on these GPIOs (doubt), it's even better
> to enable it, as UEFI brings up this controller anyway

SGTM then.

> 
> Konrad

