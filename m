Return-Path: <devicetree+bounces-34095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AC28389D5
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 09:59:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 166561F21146
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 08:59:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8717C57300;
	Tue, 23 Jan 2024 08:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wVxu5pWk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE3B53812
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 08:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706000338; cv=none; b=DSEVJMu+F+xd/ux5H7yf7ILiwUrSMkH6S8EGYW7enGc9Rn50TQAenSWjwgb9DTg1AzvBoo5b+nlAeCzLsUD6VhU95cCFRT1geQtrZPDzQDiRAQhPp4RSRkcuQlymy5ZwVdElqs9068sxTSgA7YSkKyKMkyscolSWFi/HC5dNLFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706000338; c=relaxed/simple;
	bh=GdENzMYn4lktZHY4KmY+kX1Nank39qBXFG/o0ROvZNc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Bc0vD678N2C49gV44SAVam39PODmCNTVZhFRsgTdmbKL8mqkCMOwOls//OTjzKB9SCo458tQZC20npyec0J5to0PoifonaVGuEaNXqlFOOE+oMeV2ElBj7NxYYElzoqYetv5QrokrlmqTJmpjoiDt784fvHbtmQrl0Mc7SAGGDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wVxu5pWk; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-5ff7ec8772dso33100667b3.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 00:58:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706000333; x=1706605133; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Gd8+YHFNJMug/HTkqV82yzOrM3/5Esu8/DX82CjRhUU=;
        b=wVxu5pWknd9HOkJozXVxTrd9yovv2IN62w8SGAPQriPTWTOK9UGIBmRW3V/r5T7rHo
         DoFeRrbaBDnOFK+5SkzGhLeQP9ZERWVF1WH/zzx4CbFMsvWIpnkpopRSAIllM9LuAXE6
         09sQ4ex2Y5HRwcTqlthmmp4QhXt0gNx8Jll5Vhz35/AbM1lpXd5GP/cN3iOGvrLFEJnL
         GmfYWQQlIiMwt4mMwbYg4KTqRC4ZTD1PNKz40+45+WN3bUPY5CyMhnzRbvmowjA06Cgn
         zKjqJd4fE78dT9MpYnQpWZME5AwTxiJDZi6a1uFu2E92Us6tS0KJgaexkrIVfS04xTAo
         i7nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706000333; x=1706605133;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gd8+YHFNJMug/HTkqV82yzOrM3/5Esu8/DX82CjRhUU=;
        b=xFhPXJCERxQbHBM5fZ1g/w6pfwrv1S69UQ1+Adxg49XpBznUJkIyN+14RDpxpSEzJn
         5poEcKpzNo+5/pSC1Y8aXq3eb+CkqX2EDwl1ZZpzlR6pEW20kAYGKZO59j84Tqg9xxd6
         ss93ftXZGL/pasMpcIBXEinO01lvNaEhqLDbafdVEvF5qJIZtozD+iM2AjPVqhzntnc0
         CWNIYNOlDJDl3Ydqt4+68d8mFmoAipZmbYbSZe0t9MhWP+8u4a9jJ+kt7nVFjrhrPy1i
         gHvPdPGzSXvEm5B2QvAUUI37tlsB5rcm3W/WL/cVnM1LCvnMtwxrCtx1w5AdyfMPiaKH
         kkKg==
X-Gm-Message-State: AOJu0YwLywnZkiWmNwGVTBBGXGTRA0QeoqV9IEsekR/7I9iDz0CA9iuE
	jtPxgzbuHDyB6D9BTgHEzfvcgVwOrJCvNzrdZE+lHp/i7EnUTd31LTUaTcAtEQ7N22BiCxABIix
	DdoXBVjr0pWizZmFiAsFHtztudHf149Uq6L9JWg==
X-Google-Smtp-Source: AGHT+IFf/yktetlkF3njKK8Z1wzoUWcmawotJ8Ye1DL57gIxMBOqjlwuvWsRSA1pLmywAxwnZS3wOD7ICeW8AzNHXL0=
X-Received: by 2002:a81:bb4a:0:b0:5e7:57df:6341 with SMTP id
 a10-20020a81bb4a000000b005e757df6341mr3802936ywl.38.1706000332818; Tue, 23
 Jan 2024 00:58:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240123-sm8650_pm8010_support-v2-0-52f517b20a1d@quicinc.com>
In-Reply-To: <20240123-sm8650_pm8010_support-v2-0-52f517b20a1d@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 23 Jan 2024 10:58:41 +0200
Message-ID: <CAA8EJpqfQrwBdpAeZGk0+ejwhr4G375Y8gRseGBbJDcTzDKQQA@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add PM8010 regulators for sm8650 boards.
To: quic_fenglinw@quicinc.com
Cc: kernel@quicinc.com, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, quic_collinsd@quicinc.com, 
	Neil Armstrong <neil.armstrong@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 23 Jan 2024 at 10:49, Fenglin Wu via B4 Relay
<devnull+quic_fenglinw.quicinc.com@kernel.org> wrote:
>
> Add PM8010 RPMh regulators for sm8650-mtp and sm8650-qrd boards.
>
> Signed-off-by: Fenglin Wu <quic_fenglinw@quicinc.com>
> ---
> Changes in v2:
> - Added Reviewed-by/Tested-by trailers

Please refrain from posting new versions of your series if the only
change consists of the updated trailers. Such changes are handled
automatically by the subsystem maintainers.

> - Link to v1: https://lore.kernel.org/r/20240123-sm8650_pm8010_support-v1-0-dec2224d5740@quicinc.com
>
> ---
> Fenglin Wu (2):
>       arm64: dts: qcom: sm8650-mtp: add PM8010 regulators
>       arm64: dts: qcom: sm8650-qrd: add PM8010 regulators
>
>  arch/arm64/boot/dts/qcom/sm8650-mtp.dts | 118 ++++++++++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sm8650-qrd.dts | 118 ++++++++++++++++++++++++++++++++
>  2 files changed, 236 insertions(+)
> ---
> base-commit: 6613476e225e090cc9aad49be7fa504e290dd33d
> change-id: 20240123-sm8650_pm8010_support-750c05a5cd5d
>
> Best regards,
> --
> Fenglin Wu <quic_fenglinw@quicinc.com>
>
>


-- 
With best wishes
Dmitry

