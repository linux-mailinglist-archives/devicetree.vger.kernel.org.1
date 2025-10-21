Return-Path: <devicetree+bounces-229394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA9ABF6E8D
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 15:55:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E2425354C5F
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 13:55:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84F62339702;
	Tue, 21 Oct 2025 13:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hs1OoVm4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD2C73396E6
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 13:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761054905; cv=none; b=bQYX0net6ho8t3rBqtC2gKNcUAkZ1be5+IFY7gaXvu+NOVlmMMmX+V4tEa/ES9OlHmaXiBq350Dw3pPC75+Dgy/NmdE7xRjfYfaV5kb0i82/iqgUvur1ECVyjMvB0EqXu5CyBizNh9glpnXEuoyALsvQp/jOvfCd/wumS3pqHiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761054905; c=relaxed/simple;
	bh=dtENIpP2ymfiJq2a+uxczvxyLyuLM+4hnAglKE1I+no=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Jji90E23QJZ9ZRmT8V1uU7Wsv+NNTSq9+SlKidoJ6igsZqi1+NVqOmjj8VEqroFf+I8h+PGXMuus9rXBMNi+u7nBp4PE9iGH+a04XrfBqwVGr8Y55vuzeTqJoybw3yz9Pa+2MeIG0uOi0uuZBRXgM14rQLJ5KFJz0a4aXYkVa48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hs1OoVm4; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-78378cb66d6so37203077b3.2
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 06:55:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761054903; x=1761659703; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MZkRqgQmvQUxe0HkH7YLcOV5VrwBVz6cPfsq0k36X3M=;
        b=hs1OoVm4puVOTtiW5YZKgNbhd7ncj7IncEdJ5JkCRy2ciVfXlDyCAV5ogD0ch8ChhT
         FWIDdh8ZwsHEOpyRj/8cUBJClnR9wCE+WJiLUUZHHQfPBABgkxLIxzltzkL6EBHq8yxb
         r/LVZ2JHgzvbiUwRd9M3tzPjV9LkiDmrSYVem1EQBQ+JRvb7fDDWUAvgEccuTA31hYGe
         JpO9bModiWT1/Ca/uuIU9EdCSOfCZAnMucQVYwbVaCdK620HVzoEoDePL6im2E8WD7VP
         3PJnI1jNWpQOmgEM0tWumPq8RHTuczLWxBPT0u5UmGSGsLDW4ZhixaygkS80rWwjswyR
         nOpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761054903; x=1761659703;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MZkRqgQmvQUxe0HkH7YLcOV5VrwBVz6cPfsq0k36X3M=;
        b=KqnWFemVBHmeCsXUejeE7jMZeyw70utKxD0n4Q1BZyH17sCn0gzA8kqQMKl79F7cmo
         U35jmHc8WhIxAVarhEi73XuRHCgoUPmoriMIYkvfwLyuL+JuNrBCOv/KZ4VOFdiEBljZ
         OpeMDeQ6lvy5VLOqO1FZPPMwvZm96DMdLvYLZ+liZClmL4FOEtTMT66KjXMPCXIkl0vw
         nmOavK4h5hvc+Uyxw/V/sCJ5cvdCSYXDO2R+W0X8EV43kuuz3sQ7hArIFQWJ7Xtm2xhl
         P3qJqGirp/QPp8uMJK3f1Z3VIW2/q5dd0qYuFVKjKnKiwgLq9u8BK4t6qcTwmINEHhUg
         pSHA==
X-Forwarded-Encrypted: i=1; AJvYcCWkk7b01ROS1x2zmUphN57QezI/OEy+0QSAxyTNXLjI0hdAnxzTH5zxoYV3WUcIsMu1Cp4InMBaPDHW@vger.kernel.org
X-Gm-Message-State: AOJu0YxtzDKsaB6DGbNQtZ4Bp71uMOnwrQne/aOuSHDg2nhexY+tGw82
	7i9SZbSw0/CT2/eA86J8PZX91IZxJXgqE4Y0ANVrlY2GqbSINz948HErZ56bsjCt6KycGPBQp+W
	AZ2nPAFjiup9XUCo1RYhunNiwlIksce/BCZyCwx9wVw==
X-Gm-Gg: ASbGnctwngufnb1xA5C2GPz5GxSJS6bZiJrpLwOP+QXhHqiaftF8HHDX8gOPlmV1ITN
	bjqGv5PHvkS04rLi7SZfoZB/YkOklATCDRK7J4+zXYfCAvQZKc3Gy+CYvLTe66CcvA7fdaXU0ug
	GWPTjNs75qGalMK3d3v9OelnCyimV049TDNE93eiCIGZDEJez8RT7A6VoBNq+ik8WsESiBQ2RbI
	ZnPo9Frqz12JMEvJBqVMWQYPTh01sCUnfVaAgXeB9k/WZ0ZlkQlVqU+c4BR/FWOVpn17rri
X-Google-Smtp-Source: AGHT+IGwCSwvvGE3O6NbkG51mymMqSVErgL+88mCbcZ/Sh4giHy8+THUXBi9OuVSQ8LD5w3yhlK7YcdBM0SL+BQqwY4=
X-Received: by 2002:a05:690e:134e:b0:63e:3296:8886 with SMTP id
 956f58d0204a3-63e3297a274mr6263197d50.42.1761054902681; Tue, 21 Oct 2025
 06:55:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250924-knp-pd-v1-0-b78444125c91@oss.qualcomm.com>
In-Reply-To: <20250924-knp-pd-v1-0-b78444125c91@oss.qualcomm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 21 Oct 2025 15:54:26 +0200
X-Gm-Features: AS18NWBHdAFp1mwITr0UmXnrlHznqrsFfmK4pqdcEpQD90Zx_dU1-YGQ61Q86vs
Message-ID: <CAPDyKFofohpEDcowp-MwtJqKu4wN4qvXz+BKOG6=8jhWS_k-PA@mail.gmail.com>
Subject: Re: [PATCH 0/3] power: qcom,rpmpd: Add support for Kaanapali
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, aiqun.yu@oss.qualcomm.com, 
	tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com, 
	yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Sept 2025 at 01:17, Jingyi Wang <jingyi.wang@oss.qualcomm.com> wrote:
>
> Add rpmpd support for Kaannapali Platform including RPMh power domains
> and new RPMh levels.
>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
> Jishnu Prakash (3):
>       dt-bindings: power: qcom,rpmpd: document the Kaanapali RPMh Power Domains
>       dt-bindings: power: qcom,rpmpd: add new RPMH levels
>       pmdomain: qcom: rpmhpd: Add RPMh power domain support for Kaanapali
>
>  .../devicetree/bindings/power/qcom,rpmpd.yaml      |  1 +
>  drivers/pmdomain/qcom/rpmhpd.c                     | 28 +++++++++++++++++++++-
>  include/dt-bindings/power/qcom,rpmhpd.h            |  3 +++
>  3 files changed, 31 insertions(+), 1 deletion(-)
> ---
> base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
> change-id: 20250922-knp-pd-f639194fd7c4
>
> Best regards,
> --
> Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>

