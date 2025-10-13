Return-Path: <devicetree+bounces-226129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71507BD50C2
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 18:30:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CDCD5546AFD
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 16:04:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D901314A8E;
	Mon, 13 Oct 2025 15:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FGvPhjr6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D3D314A7D
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 15:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760370177; cv=none; b=rQxtoP6AhAUZxurPB0jeXZogQwsAbYOv0k+4c3Gflihmt4mZBIDNysey/WCYeSrKl0yhg9HbR+7IhtBhR7njzVrcqEClnusBGIAkrUop0GL5lGyIVCmL5FoBzLMr7pgEgAI/db2CDKKmKRmCOSZsvaZtvD23j3RlyREDx3CK6Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760370177; c=relaxed/simple;
	bh=zHUy7XXGMyXFLXpNE2q0vIraquILzGwKPNK5Is7w658=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=ixNKcaykhNyDM7hrX6fhbh0HXgRHGm8AoAZfH6dkiNEbQLw31LeRN6Y//uz2OxYEb7VFqydZafe5qtSeT0V46WG+PLzIeYL0BhDh+4AKV50qW8SbSUkl8Usv3Jct2Ct2Vs3yhrFaywPlgs2uGbBezB76zJV7Uo8pjKpm8LlKfs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FGvPhjr6; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-46e37d10ed2so40357585e9.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 08:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760370174; x=1760974974; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lHEv1j+HHd283A1HRLwWHl44uhnMzzIL2eUu93Oc5+0=;
        b=FGvPhjr6UjrQemq9uVjTCWMt1jW95zRG6vTdHtVOLu3Qe8cIXWAvtLc1zMh9SWkzzc
         Q/+RYL01YTFTc1fsH2M05V8cak11kyK2QyZ+eVMIwBhof+iLVACweRvaX9gLXoGEW7nU
         uSmfO8lipm81YqHAoiCDpmUGaiLPs1kKrp9I0zRAXxm9NT63LZ4c/KxJWBw2oZGTBFxl
         aM0NDyQdWHhh5HdhryvGTdNxLm3tWhxP/AW6hMgmsmNA+ILQJCr3bgCK1LwcywmOFA9n
         0W7YWBA7yfNOBF8pDRI9Rc+2s7PQJjg9mboCaANZc3V4VxmBbHwtk6r6yqzzfvmZTEjo
         u7cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760370174; x=1760974974;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lHEv1j+HHd283A1HRLwWHl44uhnMzzIL2eUu93Oc5+0=;
        b=UxHWj95FEbIR6UX9gumhFKUWeYItK/Z1QvLuW05uyx3qLrIJgKSzZew5piAjNro5RT
         bU8Yr1KER9y9reHfhmS9ICuDTNay0FVa8oJi4YkTSWce1ZHCWmgPx+bpZwhlHvfddvst
         hiSddBzo5LCOH8QdQvJhnV0gryGEQ0qUURSw4cDH0vT6zrBVH4CH8seXMlOUUYMfFmIm
         I3UbMX3z7QhQpkBUhyQvduMStBL7s0WI/i4Yl9B6xpfIZB9vRguSsRZbJ/Eb1kaNIg+U
         AJ9YzIl2R7pr8gkgb3AiUNsoA1isATIKWoyZA+9Ut7HlEWnCumRBzqQRZjvBq5f1XKyk
         4qjg==
X-Forwarded-Encrypted: i=1; AJvYcCVbcGstoL4UV9XS+aKTQ/jAv6Orq5wTbxd3fFK3Hv9Z12iLCRCUlMV9XEtjqHoxiq2PmZpQs7mJl8/G@vger.kernel.org
X-Gm-Message-State: AOJu0YxQkWy3eajnCrsc+UUGY86gjKqwxaaV3vxRVy9JspPuo9cZAweu
	5n4ZVEGai2fjHTox6NGgqC4D4X8RLO0OMJmAx7FLR/QrsQgRrcL51y9w0ZH0hTwmTXo=
X-Gm-Gg: ASbGnctHyJBFeNrOFky5fqJRaYCyUfdJqqAywWQ2ebW4g8RXZm6CE+a3oFQRbApjmOf
	+MrSxZHJkvfYPKVig8dLsVeAZBVRuGSC06OXCKwWeO1PiJMyq8KOjy9Ne+nOMBU9zsTmDqZmgef
	7dRR2pYql31GX27crTgZlvKC8Sy6VRYN23ncDRkfkJRds5Tp6X7XuGS/bH6huejHrHrQw8TDYtB
	ZxkgOyKlOyV0Znl2LTezotuu2DLbfhdr4EGdAno5uNUgTZosxNaVaWwNWxuYYmJfu43RjxjNem1
	frXne+dvn/kUf094ig2YYGk4n2kyC7GeTmOqq4ZKmXieByWSWsZZPN1xFI0k7FWq1gb2ws5m1t5
	zwRM3B7QD/XltVwpKVkBRmdxJSRMgc2utdO84/cp3AQ5KvGNllw==
X-Google-Smtp-Source: AGHT+IENs+5e8LKBfLhRT9P70/UD8KqfOPC4WFoR5uKqHSevkq3rY6VCRH7NruUPqe4xFx0PkJgS6w==
X-Received: by 2002:a05:600c:548d:b0:46e:49fd:5e30 with SMTP id 5b1f17b1804b1-46fa9a8f4e3mr158026495e9.6.1760370173692;
        Mon, 13 Oct 2025 08:42:53 -0700 (PDT)
Received: from localhost ([2a02:c7c:7259:a00:4e8d:2e2d:48a3:9e4a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb48a6069sm192562845e9.20.2025.10.13.08.42.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 08:42:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 13 Oct 2025 16:42:52 +0100
Message-Id: <DDHB5915QELQ.38GN91PJ6ZO68@linaro.org>
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Srinivas Kandagatla" <srinivas.kandagatla@oss.qualcomm.com>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <vkoul@kernel.org>
Cc: <conor+dt@kernel.org>, <srini@kernel.org>,
 <yung-chuan.liao@linux.intel.com>, <pierre-louis.bossart@linux.dev>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-sound@vger.kernel.org>
Subject: Re: [PATCH v4 0/7] soundwire: qcom: add support for v3.1.0
X-Mailer: aerc 0.20.0
References: <20250912083225.228778-1-srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <20250912083225.228778-1-srinivas.kandagatla@oss.qualcomm.com>

On Fri Sep 12, 2025 at 9:32 AM BST, Srinivas Kandagatla wrote:
> This patch series adds support for Qualcomm Soundwire Controller
> version v3.1.0.
> As part for adding this support, a new macro of_property_read_u8_index()
> is added so that we can remove the qcom,din-ports and qcom,dout-ports.
> As v3.1.0 supports more than 17 soundwire ports. Also due to change in
> the register offsets, new entries are added to the variant data.
>
> Tested this patchset on T14s and Glymur reference platform.
> Alexey also tested this on SM8550
>
> Merge strategy:
>
> I think the patches can go via soundwire tree given that Rob has
> provided Reviewed-by on the of_property patch.
> Vinod are you okay with this?
>
> Changes since v3:
> 	- added bit more flexiblity to driver with a missmatch message
> 	to address incorrectly specified dt-entires.
>
> Thanks,
> Srini
>
> Srinivas Kandagatla (7):
>   of: base: Add of_property_read_u8_index
>   soundwire: qcom: remove unused rd_fifo_depth
>   dt-bindings: soundwire: qcom: deprecate qcom,din/out-ports
>   soundwire: qcom: deprecate qcom,din/out-ports
>   soundwire: qcom: prepare for v3.x
>   dt-bindings: soundwire: qcom: Document v3.1.0 version of IP block
>   soundwire: qcom: adding support for v3.1.0
>
>  .../bindings/soundwire/qcom,soundwire.yaml    |   8 +-
>  drivers/of/property.c                         |  33 +++
>  drivers/soundwire/qcom.c                      | 257 +++++++++++-------
>  include/linux/of.h                            |   9 +
>  4 files changed, 199 insertions(+), 108 deletions(-)

I just tested the whole series on sm8550 and it boots, playback works.
If it is needed to provided tested-by tag for each individual patch, please
let me know.

For the whole series:

Tested-by: Alexey Klimov <alexey.klimov@linaro.org> # sm8550

Thanks,
Alexey

