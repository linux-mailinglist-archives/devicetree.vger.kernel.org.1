Return-Path: <devicetree+bounces-33916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B526837285
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 20:27:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C16A2837FB
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 19:27:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B2E63E47E;
	Mon, 22 Jan 2024 19:27:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="leVghTsS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF8A3DBBB
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 19:27:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705951667; cv=none; b=bLi7qLdTd89K8qopian3WYc7d81mZEygCZwbW5OqRnjde+3DKOpz60Q/tXNjmoHfcJXPeOzkiInglLFb2eMrwbD6S5AgwS/EafyEGqRENKKjEA57LAv0I2Pm4kpTKTHfGiohHXgHHkgy2gDRXb4vF5kJEQVnYWgV5lH1BcGQMFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705951667; c=relaxed/simple;
	bh=Mh5Kbe0KU3JUAV7ggZ8bLsdafX+tUQ2V+LveuJGisoA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=G3J4GjPq/OnBiKRAyJCSjOZtJ6DBm4m6y1z08SIihfdWD0Xpc49A1A4wuMmUSwCoelZjl51+uxw/oA33OY8z5hh1XcyVCIBb4lKuNSV2LpfaRt0swRW5AIK5FzZudTsL5cThb19R4/AdJk0v5UXwzvgFsjhcwTRB9KIoXNKPjMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=leVghTsS; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-5ff790d41bdso23422027b3.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 11:27:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705951665; x=1706556465; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ldZM+19i4vknqpEJcz+SwZt7PNLuLGwHmstwFcNRiVw=;
        b=leVghTsS5sLwDRGNdU9STr4ydNsQaenKuR42v/HGQ3sWt9p3DKxQmwZWYrvgrLPdDj
         IS3jeZUA3aSwiFQ7Dn8vVhCGTli9ORJ/P7cS/lurnLiBxAf9Q97PZNwkuBxQU8NOkoaN
         Di+fSgasN3JY1Hf+qOaDK14FZj7b9W4DHTBuo6dzrJh6Ud+UvOlHuCkIprvnHST64PNG
         UIhwxLf/xCc8YLYKLLekBXH2Vr3V+mc8wjyDxW7ko2Zp7fdsfaDgfyR/eD7OnKUOleFz
         FQ1grO0UNl1xV/6Ki7iwSP1ZC0l6ftAnYR10wRM8Zn15td2TYkI0i3kxEeXzmPgOCw8K
         njow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705951665; x=1706556465;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ldZM+19i4vknqpEJcz+SwZt7PNLuLGwHmstwFcNRiVw=;
        b=nNWdxjTPP49uRN8xSx7gbUw6eaAoU1B36ocIITIfXQm/CkBUY4aMLbyA0RHyFTZyZX
         pKxyvSUckqNgA78Xvf5qVNZD8wkIdI0W3rDvBJaLkX5RLJ7JUqAlWZzuVzUQlB8kCQmW
         EKc+UOM3Li1aZUtmHY2vHeu2aW7aSjxCoi0YJMIFydPLTzhMdkX/kLDwOZVKwnDbUD84
         rlDFotIRrulzFCjWt8BzsHuN2lGPJww0tNDQFoGC2P81pInHUCHQ6YpN5EnFh2FW3XOn
         ynyUnW90VLdtUNvrZ8kmYAHQNMbN9xT6q4nbUl3UrqN7oJ3TSvjyykB0nDvTBNGdj2LD
         SQpw==
X-Gm-Message-State: AOJu0YzHQVY/SDZQFWJiY8G6mr5RK9l5j6z1NDrUOakHwRMrI+1AXXF8
	BdZn+HzEZlCVQ5S3wy+h4LyQwziLuvidZ0TZWnK76W5lNCug2QD+nGDVAWfBanm29U+CVe2gyFa
	hruVRrJrd0xaM7xr3NQCKh42EiYKYj9VQv/XVEQ==
X-Google-Smtp-Source: AGHT+IHiKVYE5aKPqU5kdfeO0Li9GseEmmCf2vRaYQ4qHPENuwALogLS/U/L6qR1t24qPpJkqmQk8KXd8hNpkFYciEc=
X-Received: by 2002:a81:4a89:0:b0:5ff:96ea:ba12 with SMTP id
 x131-20020a814a89000000b005ff96eaba12mr3779029ywa.23.1705951665050; Mon, 22
 Jan 2024 11:27:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1705749649-4708-1-git-send-email-quic_amrianan@quicinc.com>
 <1705749649-4708-3-git-send-email-quic_amrianan@quicinc.com>
 <54426665-90c5-4355-a174-f512004e11e5@linaro.org> <391f8f48-d1f5-702d-20d4-ae8b8a7ace58@quicinc.com>
 <065601d3-92e7-46cc-a7aa-116cd02b3c36@quicinc.com>
In-Reply-To: <065601d3-92e7-46cc-a7aa-116cd02b3c36@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 22 Jan 2024 21:27:34 +0200
Message-ID: <CAA8EJpquFe5v70A5bh=m0J03uHPfUMM=W1oQ=knHBx-Cgk8QPQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: hwinfo: Add Qualcomm's board-id types
To: Elliot Berman <quic_eberman@quicinc.com>
Cc: Amrit Anand <quic_amrianan@quicinc.com>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	agross@kernel.org, andersson@kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	kernel@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Mon, 22 Jan 2024 at 20:46, Elliot Berman <quic_eberman@quicinc.com> wrote:
>
>
>
> On 1/22/2024 2:07 AM, Amrit Anand wrote:
> >
> > On 1/20/2024 7:02 PM, Konrad Dybcio wrote:
> >> On 20.01.2024 12:20, Amrit Anand wrote:
> >>> Qualcomm based DT uses two or three different identifiers. The SoC
> >>> based idenfier which signifies chipset and the revision for those
> >>> chipsets. The board based identifier is used to distinguish different
> >>> boards (e.g. IDP, MTP) along with the different types of same boards.
> >>> The PMIC attached to the board can also be used as a identifier for
> >>> device tree.
> >>>
> >>> Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
> >>> Signed-off-by: Amrit Anand <quic_amrianan@quicinc.com>
> >>> ---
> >>>   .../devicetree/bindings/hwinfo/qcom,board-id.yaml  | 86 ++++++++++++++++++++++
> >>>   include/dt-bindings/arm/qcom,ids.h                 | 68 +++++++++++++++--
> >>>   2 files changed, 146 insertions(+), 8 deletions(-)
> >>>   create mode 100644 Documentation/devicetree/bindings/hwinfo/qcom,board-id.yaml
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/hwinfo/qcom,board-id.yaml b/Documentation/devicetree/bindings/hwinfo/qcom,board-id.yaml
> >>> new file mode 100644
> >>> index 0000000..807f134
> >>> --- /dev/null
> >>> +++ b/Documentation/devicetree/bindings/hwinfo/qcom,board-id.yaml
> >>> @@ -0,0 +1,86 @@
> >>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >>> +%YAML 1.2
> >>> +---
> >>> +$id: http://devicetree.org/schemas/hwinfo/qcom,board-id.yaml#
> >>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>> +
> >>> +title: QCOM Board Identifier for Devicetree Selection
> >>> +
> >>> +maintainers:
> >>> +  - Amrit Anand <quic_amrianan@quicinc.com>
> >>> +  - Elliot Berman <quic_eberman@quicinc.com>
> >>> +
> >>> +description: |
> >> The '|'s are unnecessary in both commits, IIRC they're used for
> >> preserving formatting which we don't really need for non-styled
> >> plaintext
> > Sure, will do.
> >>> +  Qualcomm uses two and sometimes three hardware identifiers to describe
> >>> +  its boards
> >>> +      - a SoC identifier is used to match chipsets (e.g. sm8550 vs sm8450)
> >>> +      - a board identifier is used to match board form factor (e.g. MTP, QRD,
> >>> +        ADP, CRD)
> >>> +      - a PMIC identifier is occasionally used when different PMICs are used
> >>> +        for a given board/SoC combination.
> >>> +  Each field and helper macros are defined at::
> >>> +      - include/dt-bindings/arm/qcom,ids.h
> >>> +
> >>> +  For example,
> >>> +    / {
> >>> +        #board-id-cells = <2>;
> >>> +        board-id = <456 0>, <457 0>, <10 0>;
> >>> +        board-id-types = "qcom,soc-id", "qcom,soc-id", "qcom,board-id";
> >>> +     }
> >>> +
> >>> +allOf:
> >>> +  - $ref: board-id.yaml#
> >>> +
> >>> +properties:
> >>> +  board-id:
> >>> +    minItems: 2
> >> I believe some older platforms match exclusively based on socid, so
> >> perhaps 1 would be okay as well.
> >>
> >> [...]
> >
> > Ok, considering legacy targets we can make it 1.
> >
> > But i think ideally it should always be recommended to have a board ID associated with a SoC ID, correct me if my understanding is wrong.
> >
>
> There is no "legacy" support needed here: Qualcomm's bootloaders
> need to be updated to adhere to the new proposed spec. I suppose
> we need to consider whether we have targets that only need SoC to
> differentiate?

What is the chance of updating the bootloader for the N year device?


-- 
With best wishes
Dmitry

