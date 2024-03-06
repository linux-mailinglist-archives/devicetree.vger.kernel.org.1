Return-Path: <devicetree+bounces-48618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E56F7872E41
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 06:18:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8AA02B24AE9
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 05:18:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6ED618E3F;
	Wed,  6 Mar 2024 05:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vjwCZWNu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3763017745
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 05:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709702294; cv=none; b=Wq26WlRwa29FN09LgabzT7+nFQNxrKOjUJMq179hr1Yi5oifbNYVfNAVtTmjkEkWrqtUuWGlAYnzeS+JMgjYeJh/rjpIwS8+rEjTIYqxtNq24hLTxlNu9Ll/SsM7aToWfNfBBi+cAF8aRAhkP50A1uqhJ/VF/JW69esElUlb6tQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709702294; c=relaxed/simple;
	bh=W9xcAnBJ5x0edv4L8/LlSaUoUncPmyKmnbp0d6UuMDQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VGfJsyTFIW0u/UX5LLTRlcKHTwpPXJ1ZagLz5uTI1WsAk5dTVcfwDxD4b7U4RnhYX+QUmxO5lu5k+lBTOlmhNg3ABBTQvsl6veaRzf5OEfBAQOhF8Jf38Bskff+j/lngxgo+kyPRjiF344Ri9HIwGdwf16YlvvrD/aIIzZtjU8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vjwCZWNu; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-6e5c0be115aso3361512b3a.3
        for <devicetree@vger.kernel.org>; Tue, 05 Mar 2024 21:18:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709702292; x=1710307092; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vQ/WgqvK1Ci/ne6ulin8lmOr2tFPfPFW34owF2nS4yI=;
        b=vjwCZWNuPH/KlBmRjXU540yj8bycPHypzGLSZPNziqvU+8g8ccZ1/xUgIKK3sCW3pS
         jH3IaBtARPRRgIWveztFAXoib36/gSBPcItPgsftPv9i+bptTMhgH/syHfWHIfxN9OAo
         5zzodEWIe1lE8fp5ps4b9cw9Ep95er9YbpuQJS67jtIZIJuG6Rg/9ywNqNYSbe/zFuKy
         hPw0k4fvLQriwdmNdQ7uT56RbpMroP6tmo+avwmypXy8TzSl/q9XMlAsGl9TFfwcKOh1
         al9eCzLPghF6kwfcO66Tz9RwdW1C3Mu64o+B6NfnxKrBfRra7ZEr+za7/EmiQX/xd6Uq
         mLkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709702292; x=1710307092;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vQ/WgqvK1Ci/ne6ulin8lmOr2tFPfPFW34owF2nS4yI=;
        b=GIjNRBR5Gg65End3MgPxJvkaFEzh/77dazSDpLYrkbWC0UsledJK2jbirYhkLdsEMw
         qIZeZgetrnuJ8BaJrr6lh/cB7Q/JE2gk16pVNYotNRS+8dWWQVmnwaV/qYuY7z2lgH5H
         /25lC9C80JRC9FAUo4f7Egnzpoc1I5RlaUd5kgu/h8oFeKuuCM3oyoi8904TtdXD/Dws
         rMBnommdjX2DRpiWk/GB6pv40WczYTEG4PwWsnjMV2Zia6g+7giJ+Wj/B6MgbylgKk6D
         lPcKX7HhbL1qfNlsh5QfAvo/X4zrEOH9ONqytQYXmLZolatp4D15iaMR2CtRYyUDdkA0
         Lr9Q==
X-Forwarded-Encrypted: i=1; AJvYcCW7I3hXye4DzIBE/gmbkOHQ6WZZyb7ZvW94+Iv2us4oRGSADIeYbrJMN6zc/m9C93vdmNPE7pVbPrLHb9bAcLTbW3fzgM71+5eBXg==
X-Gm-Message-State: AOJu0YxDlP5xenO9/GM8YwaAJw4HY8rPIlAhqEpDg2YETKSwYgfWm66/
	YErx20mClRharA54E/DXmzAyl+VMS6EZ/aFLtg6uWWqfkrOF6hQuH/h+X7e01vw=
X-Google-Smtp-Source: AGHT+IEC0Jim+2WiKJtC/woXkiOJB/InsQ4y2/FAI9UWOw6q1UH+5rkyx5WoD5BFD7VIQiYPl9LlSQ==
X-Received: by 2002:a05:6a00:2183:b0:6e4:d201:a39a with SMTP id h3-20020a056a00218300b006e4d201a39amr13664121pfi.22.1709702292297;
        Tue, 05 Mar 2024 21:18:12 -0800 (PST)
Received: from localhost ([122.172.85.206])
        by smtp.gmail.com with ESMTPSA id z1-20020a62d101000000b006e5db93342asm7199839pfg.208.2024.03.05.21.18.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Mar 2024 21:18:11 -0800 (PST)
Date: Wed, 6 Mar 2024 10:48:09 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Ilia Lin <ilia.lin@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH 3/3] cpufreq: qcom-nvmem: add support for IPQ5321
Message-ID: <20240306051809.rk4xhl47zai7um3n@vireshk-i7>
References: <20240228-ipq5321-sku-support-v1-0-14e4d4715f4b@quicinc.com>
 <20240228-ipq5321-sku-support-v1-3-14e4d4715f4b@quicinc.com>
 <20240304071222.cx3s37mphddk23bv@vireshk-i7>
 <20240305043503.tgy5ahl243or7lm5@vireshk-i7>
 <c82e4053-4cef-4010-a734-4dc537574201@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c82e4053-4cef-4010-a734-4dc537574201@quicinc.com>

Bjorn,

On 06-03-24, 10:10, Kathiravan Thirumoorthy wrote:
> patch 1/3 and 2/3 are already has the R-b and A-b tags. But typically those
> patches will go via qcom tree. Do you want to pick it via your tree? Sorry,
> I'm not sure on this...

Should I pick all the patches ?

-- 
viresh

