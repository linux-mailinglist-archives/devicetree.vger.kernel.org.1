Return-Path: <devicetree+bounces-243066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF23C934D4
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 00:58:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C595A4E05A9
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 23:58:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BE032E11B0;
	Fri, 28 Nov 2025 23:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marek.ca header.i=@marek.ca header.b="HV7ffaOM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B555E134AB
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 23:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764374285; cv=none; b=LYmD0VBCQ75NkODIvjte9oNULchnDvNsRK3JG8JnRgcYZHwA7jJkvYN3QAGmkvldCMt0ebWyqFtCqb9OWgb6JRxnz9VzulP4sG/QaErFSbbSROk4Agky8Ez6PVbfcSsoVkqL9S/oFdjuLxvlAA9jMNAREhNpKj96npnsYqbGryc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764374285; c=relaxed/simple;
	bh=SY/EHg6W48d8O2pSGhutlYyPPTSWcuItc5/a11Sy1kg=;
	h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=E50Cfc7/bdi8uV60GIOwhwkGvHmxb4AfSVzLsJ7SGmlhlsxXH4JkLJAI9wuC21ZGKk4Q5JAugoxVNkaB2mbYevMBvgIKTK/+VisW0SMDtmDBwurKf4xgYOsSBYsrTnUKQ1iMX0EdMMINwzbRRlXDGBG4XyU0Ccf796QTJxQ3rWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=marek.ca; spf=pass smtp.mailfrom=marek.ca; dkim=pass (2048-bit key) header.d=marek.ca header.i=@marek.ca header.b=HV7ffaOM; arc=none smtp.client-ip=209.85.160.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=marek.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=marek.ca
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-4ee13dc0c52so19122211cf.2
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 15:58:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek.ca; s=google; t=1764374282; x=1764979082; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UrziiLoWQt42KZ+NdT4M3OxTtrrYi+ppUtKZx0c0ePs=;
        b=HV7ffaOMXzMhTKUtoC6mPOPoh3q8jYdwmKsdD/IVJoK6afSS/ah7aQXeuXTuiB+Xpx
         qU20ma+88KMPJwFQfJ/Y19GPlj85FpUYDgeT/i7uysZoEyrCJYsr4IWMP30JJIeHYytj
         FJNVtRyhssZilNVjUSGDOrJLR3rynDAZkHNE8Chjs6lEdlixraogUEDe87ZhrzZeSt7w
         mdTBXbVJaZEHrS830dxS4aPrQiEc3t84QGnJnSZ6awGk/ahzZSmNsS53rR6cU5txBHLL
         ZABtQ4OOioZXgfJ/yzpZdSrMR3F4bBOBDAgg9KQHW7Vp8wMnWTGTcWov84/JmjUpGHS2
         /Zaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764374282; x=1764979082;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UrziiLoWQt42KZ+NdT4M3OxTtrrYi+ppUtKZx0c0ePs=;
        b=I82+2FVWq8yrCymF/PXJD9I/eNjOXolRqrwPlXGp2bCxLmjRBvZiMvGo01YR83ive2
         HLvE8BBEDHjvg/aX3JbCNMekUqMwpS8QqLLUUBngxdxjv2wi/bn3TrhPZ+xQrQ72utH+
         Em5X1ysn5SD679CzRmD9fbeMmNknFTCm+JUscuDhMJt9SBPu3S3jerIsmLZnrXIQGiIo
         OH60QDLOcP6pXfM3xjrDq7XpWO8loVFphcR7rb0APNdHj0GMpIvbe4nhD//DErErfl0a
         WQzmyxMWSCVZ68oF6vJVboSuLauoNE1DfSIdXstJ25pdpRxJfMG1Hh5P47AV7W4ibKyO
         A21A==
X-Forwarded-Encrypted: i=1; AJvYcCV5QmCKZUFxfTjSoskZYpS+bsDNrds9IMV1iIHPFvCXGZrTn4LoB4vm15sDe94Y71lIBIIWTU+lWVhY@vger.kernel.org
X-Gm-Message-State: AOJu0YweqL8uJ+VyA9OXWIex7ebCldobgxtwQAdTK1yitpOShgd0d9jW
	icaglnIMKqv7mOxMLWz96wNewpCcbfXHDfPZlRMjD8jx7XOmBc0Oqdt39J62CEQxvA4=
X-Gm-Gg: ASbGncu6ZKrPrEwtERguGXwStB3SBKajXHlWveZCXWBo8DP90IA8Zl+mq56U4zNf4aA
	ePaYET0MJPmpuzi/APS75g0XGEBq2DxOUqQrcuIP0AKkJgAinRvvWXOPUNDRM5PKpdKjdyoUxrG
	O8e/YUDusfEWrp3gHr2xhjIfL1Fkq8gK2t3v4ScCjy6APOPge/Ju7PLIjPffYO0CS+jAOPsDjUQ
	eUSdF18Xde9OSvGzwkFSz3TzQ3sEHDDynWCIVHGAD7dilvOn+mRybZdZ8VWSDleUiYrBqSkdOUf
	6Ouz1HNjurdzPpOJgI+Lp/GSTyTye3BxotcKyACLDCPgVDVPNA0xLM/QwnLqoQUgYJiTXr78HWi
	xmEy8EyQNqCdV5m5s6uUMOfRyhJpMUV3XhFQw+0TdNOkqg/O9xv5eImO9K8JcIYk52dvkW9YYZj
	XjGf0Cw5kAK8flX5E2MVF1m/XA3zdfl4NGO167+96K/7I0S47RXaEj8u5HhQ==
X-Google-Smtp-Source: AGHT+IEnf888i0RTZmv/jkc/n6VWyQPoARdQlGkxMDj48nvQ/lYIodw6c8ly2PHjP4UdRQ56cz3d2Q==
X-Received: by 2002:ac8:5f0a:0:b0:4ee:1b53:ca70 with SMTP id d75a77b69052e-4ee58aa0a0dmr404048241cf.23.1764374282540;
        Fri, 28 Nov 2025 15:58:02 -0800 (PST)
Received: from [192.168.0.189] (modemcable125.110-19-135.mc.videotron.ca. [135.19.110.125])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88652b8efa9sm37078486d6.50.2025.11.28.15.58.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 15:58:02 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: qcom: x1e: bus is 40-bits (fix 64GB models)
To: Christopher Obbard <christopher.obbard@linaro.org>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>,
 linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
 Abel Vesa <abel.vesa@linaro.org>, Rajendra Nayak <quic_rjendra@quicinc.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <20251127212943.24480-1-jonathan@marek.ca>
 <aSl48gV9laFb-MR1@linaro.org> <d969b3e6-a6e1-6dd3-45b9-539ba7a9f42d@marek.ca>
 <aSnH3C8s5xVSk_ti@linaro.org> <1aa75dd2-6fb4-e9ca-ca27-c0bd910246fe@marek.ca>
 <CACr-zFBLC+dhM1Unv6iWaqg2H8DC2UbHQ_aQ9-am++MPUgg8ow@mail.gmail.com>
From: Jonathan Marek <jonathan@marek.ca>
Message-ID: <35615ad4-5b86-577f-4695-c6cd85206334@marek.ca>
Date: Fri, 28 Nov 2025 18:56:55 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <CACr-zFBLC+dhM1Unv6iWaqg2H8DC2UbHQ_aQ9-am++MPUgg8ow@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

FYI, for a less hacky solution you can use CONFIG_ARM64_VA_BITS_39, 
arm64 linux as-is refuses to use any memory it can't identity map (and 
the extra 32GB of memory is outside the 39-bit range).

On 11/28/25 5:10 PM, Christopher Obbard wrote:
> Hi,
> 
> Sorry to hijack this thread, but I've been carrying this patch to
> workaround the buggy firmware from Stephan for my Lenovo T14s with
> 64gb RAM which seems to make Linux boot & work just fine with
> systemd-boot.
> Of course, it's a hack and not ready for upstream.
> 
> On another topic, perhaps we need to add this to
> https://gitlab.com/Linaro/arm64-laptops/linux , what do you think
> Stephan ?
> 
> Chris
> 
> 
> commit 16e21600c6a65ace0c75b5a722e27ced8e1bfc48
> Author: Stephan Gerhold <stephan.gerhold@linaro.org>
> Date:   Thu Mar 6 17:41:15 2025 +0000
> 
>      HACK: efi-stub: Exclude 40-bit memory
> 
> diff --git a/drivers/firmware/efi/libstub/efi-stub.c
> b/drivers/firmware/efi/libstub/efi-stub.c
> index 874f63b4a383..355a9b2c0818 100644
> --- a/drivers/firmware/efi/libstub/efi-stub.c
> +++ b/drivers/firmware/efi/libstub/efi-stub.c
> @@ -106,6 +106,17 @@ efi_status_t
> efi_handle_cmdline(efi_loaded_image_t *image, char **cmdline_ptr)
>   {
>          char *cmdline __free(efi_pool) = NULL;
>          efi_status_t status;
> +       efi_physical_addr_t addr;
> +       unsigned long pages;
> +
> +       addr = 0x0000008800000000;
> +       pages = 0x800000000 / EFI_PAGE_SIZE;
> +       status = efi_bs_call(allocate_pages, EFI_ALLOCATE_ADDRESS,
> +                                                EFI_RESERVED_TYPE,
> pages, &addr);
> +       if (status != EFI_SUCCESS) {
> +               efi_err("failed to reserve upper 32 GiB (40-bit memory)\n");
> +               return EFI_OUT_OF_RESOURCES;
> +       }
> 
>          /*
>           * Get the command line from EFI, using the LOADED_IMAGE
> 
> 
> 
> 
> Cheers!
> 
> Chris
> 
> 

