Return-Path: <devicetree+bounces-158546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD0FA6736E
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 13:04:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D8713B719F
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 12:04:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FA0D20B81F;
	Tue, 18 Mar 2025 12:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="xAfzF9yx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AB920ADEE
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:04:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742299467; cv=none; b=tVXM08/lIU6qPSWZFGgbW/uCY5NLigUBLyHS6idCrBGF7qMH5fIbFeagjJX5KoU+Tfea72E/Nff6P/HI42oFw7NSjzt/wyjZFI5W3TUEC7Daf8MJJcO3B8wnCD/hBis1XRwf2yA2oWPPUXfilkjypbWq6HBLtSHQ7U75quARspI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742299467; c=relaxed/simple;
	bh=Q4mZtFR/Tt7/i4AsUspqof7CvawdukYJTvPRyJptRhg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t4eCbtafOoHuWpSHgAwI/yHwc9RWzuaY7t0/hrdzV3e8Qa4bC1Wuyfv4Z2ZZjTzsmIACIcMyS8I5akcLoAAcMf0mR76jiFUUmz155tN/qP+cHG7s7Pi1o0pGxdNxESdBlRjI3XDITmj2JQ9hHHilSiC8fyjfqhs/S62YIJY/0xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=xAfzF9yx; arc=none smtp.client-ip=209.85.166.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f177.google.com with SMTP id e9e14a558f8ab-3cda56e1dffso29267275ab.1
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 05:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1742299461; x=1742904261; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8CJnOafkcvrR/l5VXbCtNpeHL6EGqqxqILSUHXldXfI=;
        b=xAfzF9yxDV/Yjhk23XMpBGHkYWyY2FZsfUjrpefD3isTK3ZQeMNscwqXLohnTg243w
         QKQ+I3hSNVrz6rnmM5xivHBHVCCxEyOgdJ3ETw0sF2EgYbrP0tZMX9ya0VMdEvbxS8gz
         B9dv0jbRcsaU4qIUtX3SN8/T9RXnpwWBBaGEj93EyU0HINi7fDlU8I766KfDMIuf/l9R
         DdVcrgaPZkmcxCBFHaE9d0JBiII7jd+X9pXATyxf9qN28byGFLqOJ7AuxBGH1p6hFmiq
         bXTjOUM+pNtb6uUsRJ4oBu0Dw9NpCqLUjF2z3eXANwl/8idOKRjn9cMYKsKcBssvPCIu
         HOxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742299461; x=1742904261;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8CJnOafkcvrR/l5VXbCtNpeHL6EGqqxqILSUHXldXfI=;
        b=TEZAQ5qJR2oTcMtDUgLdDMMM2dF+GPF0xZwXa9s/CjyZYcu/lzD0UQKQ3wkrEZb5hR
         k1X3i0jqfR42LS1rkSDEs+nsgrM4UTmonXZ5QdgCPfbRe2B7QC78wkr7dVMpx8XZC0gf
         mrmt46+4QC3hk8L0quODL4eEfTugp78y6RRDEGs8Mmho7JLKUq508NzXyRGY+cmdaom/
         0MSypxxVIVRwNEbp+VJm+ixVUOrm0oO2E1bW54OzA8AjAzmQbfaY4ykSTu7rMVcA72Bn
         wstIIWWukzJX7gOlwevaE8+i/CjMiU5BltPd7ZRDsN9u1lbM4L67250OmL1tX1rmXXeS
         GHTA==
X-Forwarded-Encrypted: i=1; AJvYcCUlV9CwadtKnzD6cbiZ//ZlnBW/eB0jsPcq1eUwqSF+TBZYG8jkYZAJ+21hhhHvSy+HXKrSjtu7sNFY@vger.kernel.org
X-Gm-Message-State: AOJu0YzL8oaZA7Ipm6n8u6NbPcWNtsvc/BAS1Q6by3zoludhQhXlTbwC
	Z86p4Sdq2m+D9CygwZ4Gpmik4o8JjnPow9lb7p2bmCJTVyWD0PJpMtK6llFXfG4=
X-Gm-Gg: ASbGncvnwB44S/WFG1c0YqrnBxsIp2b+Jb0sj7ZCaMw3wA1vhpuftmRMkOMpROgLYIj
	1UIoY8UgZlcGOthLf4jHK32aMhGt3owps95ffHDFGlCdkrLwIC2GdDZz9BkjXcO444nehj/ZG86
	DJHTBIcfcb5/Zg5yiXrXtfMCjDF9ZnDnK5kfwnVxRtWU1qpybdO4rfYBXR1X6wBzbAkgkD0NUc7
	Kq7TAovswgSlw34U9+0r4fPcQgwdiuHZFeUT9hToDDusLdkLEmP73qO4TL9HjhhWFCcCGdVRbsM
	aiQLMeyfsJrPFgPPf7KRmYARG8X2OOYwar4Cr2mWtG/O/51BaToUIWaJtMSX5a/BvMU9MWfE2pr
	Z2sWzRAtR
X-Google-Smtp-Source: AGHT+IFS/pxfjNPDqJhNcLq/lECG72AhDNrlffrBV2L3kxYV1244Sdx32ia+HQiIA8St61CQNBlH4A==
X-Received: by 2002:a05:6e02:b46:b0:3d3:dfc2:912c with SMTP id e9e14a558f8ab-3d483a75837mr164324675ab.17.1742299460874;
        Tue, 18 Mar 2025 05:04:20 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3d47a6683e1sm31287795ab.19.2025.03.18.05.04.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 05:04:20 -0700 (PDT)
Message-ID: <a7862a8b-4d81-4b1b-90d9-3cedde0699a5@riscstar.com>
Date: Tue, 18 Mar 2025 07:04:19 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/2] i2c: spacemit: add support for SpacemiT K1 SoC
To: Troy Mitchell <troymitchell988@gmail.com>, Alex Elder <elder@ieee.org>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>
Cc: linux-riscv@lists.infradead.org, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 spacemit@lists.linux.dev
References: <20250316-k1-i2c-master-v7-0-f2d5c43e2f40@gmail.com>
 <20250316-k1-i2c-master-v7-2-f2d5c43e2f40@gmail.com>
 <401059d0-6b2c-4c40-8c4d-51749dca27f3@ieee.org>
 <c7dc26a0-7cbc-4909-b2ac-582d108fc5e7@gmail.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <c7dc26a0-7cbc-4909-b2ac-582d108fc5e7@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 3/18/25 12:44 AM, Troy Mitchell wrote:
>> I'll leave it up to the maintainer to decide whether these
>> comments can just be ignored--my Reviewed-by is fine, even
>> if you don't change these.
>>
>>                      -Alex
> I know it's right what you said.
> But I don't know if it's worth to send v8?
> Maybe I can fix it when I add FIFO function?
> If I'm wrong, let me know.

Unless the maintainer wants you do do v8, please just
address these suggestions later.  Thank you.

					-Alex

