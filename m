Return-Path: <devicetree+bounces-30469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6760C82801D
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 09:10:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7FBE31C25851
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 08:10:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4F51125A1;
	Tue,  9 Jan 2024 08:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hzDBrMVN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F59BC154
	for <devicetree@vger.kernel.org>; Tue,  9 Jan 2024 08:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-557a3ce8b72so2195822a12.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jan 2024 00:10:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704787826; x=1705392626; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i8hG9/xOVo1/DVSw1oYQcI6XP0EdXBlA7r2K4+2BAvE=;
        b=hzDBrMVNn88FxvbbeZlwAYHal7kf4Mi7FU9vBCyuHA6CTAvHsCZlgNbQwQ+njK83qq
         bhuXYXph1AQiWcofnHnPf5tNU74CctHMZRUfmCIZeJnQIyJoTNwKkvCry+XKoTQgjx3Z
         Yt3A00jFHboOkrK6d9DdN5fw7dHbGk35YDrYBHrku2e8KT2UlLN4hcf9xIHVSNdDD3dk
         QeM0kewsAqhLkOi6HIMzTFB6fdri2uoEMefifeJ6Gn5E7aKM2Zx3qT7wChCOORkvSyKq
         x3NU9nD7tP3NmziGVSt2Qsb5T0dSiHx/T2IqdISs5WpmQWzVzjzJWZelMA1OWj/hXXl7
         rNAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704787826; x=1705392626;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i8hG9/xOVo1/DVSw1oYQcI6XP0EdXBlA7r2K4+2BAvE=;
        b=ZGS71NeOVbJEgxg+bhQ12HwUijmpsJVRJF+1+hRtqKYJ0IGlTyT/6t6+uNv5K3XCMU
         WjN5K6CkreAORmvGYT8WsSbyZgAWs78g0r6QvA8DK9kqWUSVm1WErbu9v1IJA9MFpWaX
         bQ7aGGgkLLBy3sI3r9sbn24mj5CzONZ1webxXf4tc2Xo1gJgRezeI7ISpHCI/YjVEHEJ
         hxWS8s98jUUVHrCgjEwMEuFvpQutq/0DlIXuX+CqVGvSSyS12lAKjVD3KOtKvNHZgGrR
         U1I9gTKWhyjHknGDNYYb7Ms1zaBjgpNIBPUsq4v+jk7ohA2KNQAWna+AcU+cCJ0wF8/E
         mWfQ==
X-Gm-Message-State: AOJu0Yx+YnmZeVNflwzgfKbkSitaiuj25VDQUkkO1Zy7NJdnNF4OY/lh
	6oFSbHxF7nffUqDbBEvTdQS/vhiPlaebKg==
X-Google-Smtp-Source: AGHT+IHH/icqqHfL/mpwlo6cO4t8TQGBmILCvZQYsNQjg3vg2MfAlhSOX2eyuJwqtOZ9Xd97wYmQ2Q==
X-Received: by 2002:a50:c30a:0:b0:557:416b:e99b with SMTP id a10-20020a50c30a000000b00557416be99bmr2515491edb.37.1704787826370;
        Tue, 09 Jan 2024 00:10:26 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.112])
        by smtp.gmail.com with ESMTPSA id dm3-20020a05640222c300b0054b53aacd86sm668956edb.65.2024.01.09.00.10.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jan 2024 00:10:25 -0800 (PST)
Message-ID: <6b2fcb18-640e-41d7-9b94-6a6c613ac391@linaro.org>
Date: Tue, 9 Jan 2024 09:10:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: fpga: Convert bridge binding to yaml
Content-Language: en-US
To: Michal Simek <michal.simek@amd.com>, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, michal.simek@xilinx.com, git@xilinx.com
Cc: Xu Yilun <yilun.xu@intel.com>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Moritz Fischer <mdf@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Tom Rix <trix@redhat.com>, Wu Hao <hao.wu@intel.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, kishore Manne <nava.kishore.manne@amd.com>,
 "open list:FPGA MANAGER FRAMEWORK" <linux-fpga@vger.kernel.org>
References: <5740b48543a94b7e2cde04acfca06f4e5eb5d981.1704787119.git.michal.simek@amd.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <5740b48543a94b7e2cde04acfca06f4e5eb5d981.1704787119.git.michal.simek@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 09/01/2024 08:58, Michal Simek wrote:
> Convert the generic fpga bridge DT binding to json-schema.
> 
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> Reviewed-by: Xu Yilun <yilun.xu@intel.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> 
> (no changes since v1)
> 
>  .../devicetree/bindings/fpga/fpga-bridge.txt  | 13 --------
>  .../devicetree/bindings/fpga/fpga-bridge.yaml | 30 +++++++++++++++++++
>  .../bindings/fpga/xlnx,pr-decoupler.yaml      |  5 +++-
>  3 files changed, 34 insertions(+), 14 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/fpga/fpga-bridge.txt
>  create mode 100644 Documentation/devicetree/bindings/fpga/fpga-bridge.yaml
> 
> diff --git a/Documentation/devicetree/bindings/fpga/fpga-bridge.txt b/Documentation/devicetree/bindings/fpga/fpga-bridge.txt
> deleted file mode 100644
> index 72e06917288a..000000000000
> --- a/Documentation/devicetree/bindings/fpga/fpga-bridge.txt
> +++ /dev/null
> @@ -1,13 +0,0 @@
> -FPGA Bridge Device Tree Binding
> -
> -Optional properties:
> -- bridge-enable		: 0 if driver should disable bridge at startup
> -			  1 if driver should enable bridge at startup
> -			  Default is to leave bridge in current state.
> -
> -Example:
> -	fpga_bridge3: fpga-bridge@ffc25080 {
> -		compatible = "altr,socfpga-fpga2sdram-bridge";
> -		reg = <0xffc25080 0x4>;
> -		bridge-enable = <0>;
> -	};
> diff --git a/Documentation/devicetree/bindings/fpga/fpga-bridge.yaml b/Documentation/devicetree/bindings/fpga/fpga-bridge.yaml
> new file mode 100644
> index 000000000000..248639c6b560
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/fpga/fpga-bridge.yaml
> @@ -0,0 +1,30 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/fpga/fpga-bridge.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: FPGA Bridge
> +
> +maintainers:
> +  - Michal Simek <michal.simek@amd.com>
> +
> +properties:
> +  $nodename:
> +    pattern: "^fpga-bridge(@.*)?$"

Either I misunderstood previous messages or something is still wrong.

One message said: always unit address, so there will be no
fpga-bridge-1. This means "?" is not correct.

Other message was saying "reg" is not required in one of the bindings,
thus "fpga-bridge-1" is reasonable if there are more than one bridge
(which was already said as possibility?).

Best regards,
Krzysztof


