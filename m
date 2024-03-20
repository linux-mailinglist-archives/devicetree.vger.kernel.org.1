Return-Path: <devicetree+bounces-52039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B22881A17
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 00:09:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 955E12837D2
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 23:09:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA54E86122;
	Wed, 20 Mar 2024 23:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wtnlTsix"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D38C285C58
	for <devicetree@vger.kernel.org>; Wed, 20 Mar 2024 23:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710976140; cv=none; b=EbE/oTtbLAc/Hyn1H+cA7+dA2iVlN1lYhKfNTT1xDceKEwTt+Zgncg9GRYCcCkzn4GdTx+rn9lv5OOKWOfcsktMnzNKbmrMbKhB4AF4XnhqtJ2jWvLIOxgTXS3VviiHBVIc3cPJ2t2Pom+KfEL4jprta3mcazW0blnoKdmXxkaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710976140; c=relaxed/simple;
	bh=wEitcMtU69ELTQ6HFUAJtJm8A18kUQS1wB/GUBQBwI4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MRbdih2nxkoXhc991LJb6Ck3P4nqQE+FPHFkyDZ45dZHJA6w8nqnLUKrHyIQKvzPWBX4ky+JQ6C94ICW9drdIN4YZtgzT/kNjdBIXcSW4rpQIs21nS/DJa0PCaEcTrfpEvv0CtOxRi8YNXmQ3DRNSD2KnS1WYNX6ocWsTSFGbdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wtnlTsix; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2d4801ea689so1028481fa.0
        for <devicetree@vger.kernel.org>; Wed, 20 Mar 2024 16:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710976137; x=1711580937; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IkXn2l9aQZGCQHALJx17Ml36xPwVxX2TSWrjLHWJzFk=;
        b=wtnlTsixQ64fAnB5ADKJxhH89+rsYZIPpYp9XtwjJ6FRckH39iNaShQD9RbsqAvcbX
         +qAMDGacbSSriXNZ1zT0XFptmilwmlhpn37OX8ZUU57+een8eqBu943FFmczZaw45Iub
         sqSvQFgs98JrLma8+UCiZzOvwTnG9Dug1qh8tNT8e1MSptv+AMrUMZwyyGCXO6xPJ2tG
         QL5AvWqX3oKaFKw7Z3ARA+Z9H94d4L/lgH8802OBhl87piOIu8XF+K/n1lTXUutBPzYg
         f7W00tD3icjlCjwyGsmbaImqU35yuXbriuspn+i+QgsclTzhabB18cv01Xq8AqEfWpYK
         SrQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710976137; x=1711580937;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IkXn2l9aQZGCQHALJx17Ml36xPwVxX2TSWrjLHWJzFk=;
        b=As1COl/hpKzoXUBoVwlHzZ3q9R4ioQLLfiXZ7P6nuRRYBLiKHETV57vIRFg1392r1+
         FlbzvR8DFMLs0EoPHdVtBewAUQBz1DMzkz/4gMovJBinbHUMtlqeTi97EHI2BSQ02j5O
         qTKpqT//3/3jUTj58ZlLbBZknSHPqSJyKdpm4Wk2J+Yj79cjo+ZYZ6paxGR+rkS5chkO
         2mJ7mCdfQGt+rc6CBDNdY7SbFR0rq7CffQOOzeRJi9DYVBQFdUR5c575V6Nh4qF8RBG7
         xBVmeI6LRrdqYHmFUktWQn6sv/MV7DqA/zCIeHJ+fWk9I3IeULQ9q+k6gdeGKG5hJtvD
         DPDw==
X-Forwarded-Encrypted: i=1; AJvYcCUgPMZZ2jzd9tgavN+V+2Ac9VfSUwUsm0Uc8fhMLRwX4HZMcClsxJxUK06bkp6bnQB6NLmCOCo99ms9FiDSCxZzN1iZZuhq0dqjKQ==
X-Gm-Message-State: AOJu0YwwG02jV07UWFJ/ZKXD80ydTvzxF6Ws2h0+LZpEXip6Okoch3JI
	8qL/0MHadz4A/ZD+yUhmmXQvddCO3fTCsL1hhI2SRx2IGJcFSq7Jyft+VdHl9ZM=
X-Google-Smtp-Source: AGHT+IH4oiswGEj49f2wWDyVtL3HMN3AVR4jZcyvrpnyiJp+ismyJGeVgL2Opz5yeSH2QEe/aSfmeQ==
X-Received: by 2002:a05:651c:1068:b0:2d6:93fa:ce20 with SMTP id y8-20020a05651c106800b002d693face20mr1646812ljm.0.1710976136987;
        Wed, 20 Mar 2024 16:08:56 -0700 (PDT)
Received: from [192.168.1.102] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id e7-20020a05651c038700b002d4aa0bcf15sm1181328ljp.71.2024.03.20.16.08.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Mar 2024 16:08:55 -0700 (PDT)
Message-ID: <65c8614e-d54a-42bb-923c-1c2bfc1d3bc1@linaro.org>
Date: Thu, 21 Mar 2024 01:08:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arch: arm64: dts: sm8650-hdk: add support for the
 Display Card overlay
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240318-topic-sm8650-upstream-hdk-v2-0-b63a5d45a784@linaro.org>
 <20240318-topic-sm8650-upstream-hdk-v2-3-b63a5d45a784@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20240318-topic-sm8650-upstream-hdk-v2-3-b63a5d45a784@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Neil,

On 3/18/24 11:51, Neil Armstrong wrote:
> With the SM8650-HDK, a Display Card kit can be connected to provide
> a VTDR6130 display with Goodix Berlin Touch controller.
> 
> In order to route the DSI lanes to the connector for the Display
> Card kit, a switch must be changed on the board.
> 
> The HDMI nodes are disabled since the DSI lanes are shared with
> the DSI to HDMI transceiver.
> 
> Add support for this card as an overlay and apply it it at
> build-time to the sm8650-hdk dtb.
> 
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Now I've successfully tested the change on v6.8 with commit 0581bcc48048
("drm/panel: visionox-vtdr6130: Set prepare_prev_first flag") applied.

Please feel free to add my tag:

Tested-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

--
Best wishes,
Vladimir

