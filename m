Return-Path: <devicetree+bounces-234262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB26C2AB94
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 10:27:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC7DE3A9DAE
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 09:26:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C40162E9ED4;
	Mon,  3 Nov 2025 09:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="d4/rPMFQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34132E9730
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 09:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762162017; cv=none; b=cO/jueXOsdTutebY50RN0eL8P75flWfFHiphzMKbDnhMBX+yqIdPfLnNJAnQzqcfNTy6bmNC9prmitTrsM/xPf5InpqLCMte9nYCMkwRF+qMopqo93gGw245jv9pEMRGd3+3NLivdxZ/n073fGu4/vl3p4TFvz44yCbtPQLQCXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762162017; c=relaxed/simple;
	bh=ZeDj0sbgu2/fSDLlf7HO2LaIOPYfEGpG73D3o9H82DE=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rdn9BFWmUpHrkDtAt2y+sGOLKFbjnR4hw9Zsn20Urz2XhTmsAmrjjFoYHYcSJCCap+mPGLUP05+I/UV/sz36t1xtxMRXXKXEfrribafyUVgmkcKfj+bJeKKQytTf+LBvF2q2iq2WO/VZTrNg+g7Bd0rfHRjL/N9+o+8vT5kBmsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=d4/rPMFQ; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-6409e985505so2339582a12.2
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 01:26:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1762162013; x=1762766813; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ixJuWLCsUOxw30pNhtpUHDTpGG46kFc4qSAJPT9O3i8=;
        b=d4/rPMFQlZUB+EXAmZVmDt98qvTMT7E7TZeudYF7RpwZu8XJcuLtgGZk35WxF0RA4+
         piIEno398O23UmzfKHnBCw0p1F/af1IRfQ/K1Cpj7aRuFHERNPTZtS6W06kyImTd4fYF
         MBxBvkUVPqMsgr6i65mGeMzPyzfmZvqJtsa+ZRtzXn7GCE3Q8pkcGQEgEmEzBG2PKpoA
         C/YQ43Ye5gn13/EKOGcoV1OaE8xWNIUBPR6j3l+t+ct412OwTUwGEFF4xlKxfc3fljYw
         sywIfB7UmNrZE0TDOxP501WzDQMnQjyFXwPOsv093WrrlfahJwbUy74nZM3Us6uh7mJu
         kVOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762162013; x=1762766813;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ixJuWLCsUOxw30pNhtpUHDTpGG46kFc4qSAJPT9O3i8=;
        b=LDjQzTWSU3eNMj3ooOK/CnU+CebXRTUuRczBxO/yUZOuCo16KN9qNkibodmw4Iedxv
         tN35yjAvCstzsyCrrBojT4JhEhFmI+aq2I+doa9GpsWJyEg8O7ql7JrWClTeqQtCM8bu
         lYBPgB17B2RKmbbvwVeCbTg6c3YxZfkF8DHHgd55a7Tbb2H9KmMzYewJve4Qgq1E1+hl
         9LBNl1IGd9wu4b73pCPLNdzeErNXa7hAvkgmihGbRefDgTZsHBB7y35Wjz1ljcUCXnCm
         OtOqsvRt6Ly0e3N0lIixqLDMad103u/D0Bp5+4yrAiJqqWqy4dBKQdzs9axAK1p4vHSP
         F6nw==
X-Forwarded-Encrypted: i=1; AJvYcCXFhyD7WvW/d9xVERSwcCv6nPz6hwD5RSbD70oL4aTTcEXNTmSyOvLrrVBiNuTyZm1DzNKntAgwtbG7@vger.kernel.org
X-Gm-Message-State: AOJu0YyJIA1onbLPgReGAFbXSaSEF3gnB6QWgI6VkkCHjyIAEC8Ead3D
	Vkfo1c29vMbXXL0ZkawY/I9x42fVZ5Xh8tYDAgEYxd+XfDhBraqxTfdS3V1nd51TvjE=
X-Gm-Gg: ASbGnctmoXuyTgohRgqSmHRZW3bCNTJq/uPVv4yOj9/oJrM09sv34DrnLij8hcrXTdx
	5nRbbBbXZqLHmYFqd0N9/E8GNSgGO/q22499k6sHxK6W9dZzwvmuhq3QBbM/1w8B17+k9ivkYTv
	1I20ilQOUhlRSg+AOZcEufze1NmlvDX1/SOBudGBDnS1nB8s9fU8bfZPUq3YNeGDwI5ZnjCWbXD
	4hJR/0V6dmqLYGr0Rs+0L5ZsY34Da4IqQEZjjHbJYxMW7/1PCeK0t05QKSi8ElYcWqD4tYiawsR
	9qFur1+iKJJu6WRaxzs6s6oUylLA+UtwnCfrMTbYz5NH5Hg6gwL/warofhHOref1oSzmAaOIM7V
	hSmMqJb25CPfDEP3mqlN7EQj1bRui0judqn26eD6S7mde/z9Qsj/nfPcjRnC/M4J8ZpAwlD9JXm
	noV/uUa971XRp2TsAq+Um/IwXk7gjEKFibAhdxQxBl/nk=
X-Google-Smtp-Source: AGHT+IFbMlV6C3tMmPaPwlvhL5y7JhNKN6mWcEKa/YhIPvDv+nTx/bpkldC/sGDvuJsJzz/+pijPyg==
X-Received: by 2002:a05:6402:510a:b0:640:c3c4:45ef with SMTP id 4fb4d7f45d1cf-640c3c464b0mr2318525a12.2.1762162013313;
        Mon, 03 Nov 2025 01:26:53 -0800 (PST)
Received: from localhost (host-79-19-212-20.retail.telecomitalia.it. [79.19.212.20])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-640a503fc82sm5482014a12.4.2025.11.03.01.26.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 01:26:52 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Mon, 3 Nov 2025 10:29:10 +0100
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	Andrew Lunn <andrew@lunn.ch>, Conor Dooley <conor+dt@kernel.org>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	"Ivan T. Ivanov" <iivanov@suse.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Phil Elwell <phil@raspberrypi.com>, Rob Herring <robh@kernel.org>,
	Stanimir Varbanov <svarbanov@suse.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: broadcom: bcm2712: rpi-5: Add ethernet0
 alias
Message-ID: <aQh15uaWYYHCaSTb@apocalypse>
References: <20251102111443.18206-1-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251102111443.18206-1-laurent.pinchart@ideasonboard.com>

Hi Laurent,

On 13:14 Sun 02 Nov     , Laurent Pinchart wrote:
> The RP1 ethernet controller DT node contains a local-mac-address
> property to pass the MAC address from the boot loader to the kernel. The
> boot loader does not fill the MAC address as the ethernet0 alias is
> missing. Add it.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
> Changes since v1:
> 
> - Moved the alias to bcm2712-rpi-5-b.dts
> ---
>  arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> index 09a849dd09b1..3e0319fdb93f 100644
> --- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> +++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> @@ -18,6 +18,12 @@
>  
>  #include "bcm2712-rpi-5-b-ovl-rp1.dts"
>  
> +/ {
> +	aliases {
> +		ethernet0 = &rp1_eth;
> +	};
> +};
> +
>  &pcie2 {
>  	#include "rp1-nexus.dtsi"
>  };

LGTM,
Reviewed-by: Andrea della Porta <andrea.porta@suse.com>

Many thanks,
Andrea

> 
> base-commit: dcb6fa37fd7bc9c3d2b066329b0d27dedf8becaa
> -- 
> Regards,
> 
> Laurent Pinchart
> 

