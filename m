Return-Path: <devicetree+bounces-140029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D8009A17D6E
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 13:01:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 482083A33BC
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 12:01:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A44AB1F1900;
	Tue, 21 Jan 2025 12:00:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A0qkCmXd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC561C1F21
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 12:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737460857; cv=none; b=nIjUmod9zh9pmcO/L6JwjuGSV1wQ1fxCprCogr2WJjOkqgdeu1Am3RaIZbpeVrGsc2+YVYG6u+VGXsLP2H0un4ZzDSZybCBC8tPmUMsfoMEZzV4X4QUM1dCO7TZxH/lR11jsk82ts2A6Fj/1FTFaL8e9fC8H13zhcGeKZMFz4zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737460857; c=relaxed/simple;
	bh=sFjvkQQSSVZqQAZ1B5Mafi0pc8cfGt8+Eq6BluaI1dU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KojQdm2oB+cYPQOaT1TXDlvnh6EBXNMWNtDSH6bWch7HjtsHA0GHFIuQYBC1ljCwBzdKX5ggMlmbq7juaUFxi5ZnO58bEbK3/FzlDwyPPlc/9O37WX7Z8h+D44LBtQ4LqQkft6Up/JmDyR7iEXTWIiXfhnj1F1GQW4KsDDpdijc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A0qkCmXd; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-53e3a227b82so5079120e87.0
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 04:00:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737460852; x=1738065652; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=m2pc8cCMiKqFOr0JFM8XgX6fpE3iGh6b7fVondyVxQk=;
        b=A0qkCmXdOM39gnw6FMeIzHBUSAcwaTjIqbck2Qym5sFIxyrwJuKIfdOoaqyNajCsjk
         9lRfEsp96/JIxRxm3N/PCUQuvRojTXdITP4C8DyS5ZsgeTRxZX3HCI/BQpVP2jfTfJZJ
         AGe8AN6eyIG62PyMfYSkFUirv+ggqR9Fb7xIhma3Mgq2xfsVd35sugX8p/n2j8PyrIJw
         KlFHuvknt9jqk389pVYXEhJweio5ABkNQZqdS1PARQ3BwOhpruU9DdpJDbdNq5WBxxeP
         J6iTJMVDLzW6cVHAJET/TFhw9XYSAg10bCf0CdJIxxF6W3kQFeRB2ZAu8PfUPlNWz6Ar
         cUug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737460852; x=1738065652;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m2pc8cCMiKqFOr0JFM8XgX6fpE3iGh6b7fVondyVxQk=;
        b=a3ZnngXoGrk30iuQz/cItR5M+VtQUS5HOMzPuTlZPQLlejuWXsfMrhKkDJTotCHMEG
         p5o+nWd6xFyOYFFsPztBeyjLFVsMj6MaFJQSz2ue+6qHz7UUqxvB37URbp0lKRhCaKzg
         Rg/X5fV81gwfxng1b7GGCm8qzYbLzgTg2LTipbSAZZEyAiJKrVM12NM52vjoGMfvZzds
         tw3SzXrpTEAu+kCaQDU60cmT/82niUYmDEvaW8fW+yb+PfzwvVSdlmXqFbLCxlzhp9VF
         hnvS3eTyiBUQbUZjK7lTFcfNWLv3BunBjz5RcYmlDdJxR5merTlLL5Rw0DteVz089NmR
         Bx5w==
X-Forwarded-Encrypted: i=1; AJvYcCWO90BIQywDustXIZ+0Gpks3MSXuDW23Cy2Wa4NjJGqcaroUAFaXcb/c6T4TzVEDYfo4GoS1EMw18/d@vger.kernel.org
X-Gm-Message-State: AOJu0YxGgvYxJI4F1+d8QY1uv0pH3hxcb0LtwKKscxko9+0rVs+sfLDQ
	Z3iRbWpG2lLHiAakTLI4/UM+8//GdSZceX0bKOBpvGvivmqatyMd4YA42O1Gl8Y=
X-Gm-Gg: ASbGncuxY2z05FrWeojSK2heeaR4CWcZjOLCLuCuC+5Spdgsy5FCna0rOx8y0sYMFY+
	aXr7G8xl++N7hvpNASfjaNOgXdPi4FnCbyrrM7cuRZJvRhDksE+B+C1OJO2R8pCyyBEMyX0QX5p
	eEnDwFFIBATQ1x2+t4zrJRTrySSilhIQ2zOyVGgLtMDOIMPAbBWkTyb1tFBfeRsni+nyQKR6pVv
	kxlgmXP0TM5Ynos6hf/EVYFh5vQQwMGq6uyR40F7tBnouff1fcv6WfywEeJe7ClJugumslLggg6
	TuZEMHCKjeryKqNY0Q88kh0x7vmDOoPRifRK3BTIxIMnhIi0jw==
X-Google-Smtp-Source: AGHT+IFdqe5e6EMUv/Ie41SruL0GimNnvf/5eE4TfSZWZolpGPfJ/1kAzDPw4MLYce1WGYSj5rK48g==
X-Received: by 2002:a05:6512:3c99:b0:540:75d3:95c0 with SMTP id 2adb3069b0e04-5439c28080cmr5399153e87.47.1737460852376;
        Tue, 21 Jan 2025 04:00:52 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af7390dsm1808917e87.200.2025.01.21.04.00.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 04:00:51 -0800 (PST)
Date: Tue, 21 Jan 2025 14:00:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quic_kuiw@quicinc.com, 
	quic_ekangupt@quicinc.com, quic_kartsana@quicinc.com, kernel@quicinc.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] Modify sa8775p.dtsi
Message-ID: <olipbuuyxttdfzrzsznkpwcjse6x3t5hanbdrez2qj57i4iupk@ynicem7cng7i>
References: <cover.1737459414.git.quic_lxu5@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1737459414.git.quic_lxu5@quicinc.com>

On Tue, Jan 21, 2025 at 05:24:02PM +0530, Ling Xu wrote:
> Delete duplicate fastrpc nodes and remove cdsp compute-cb@10.

- This is useless and incorrect
- Please use correponding prefix for the cover letter too.

> 
> Ling Xu (2):
>   arm64: dts: qcom: sa8775p: Delete duplicate fastrpc nodes
>   arm64: dts: qcom: sa8775p: Remove cdsp compute-cb@10
> 
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 246 +++-----------------------
>  1 file changed, 23 insertions(+), 223 deletions(-)
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

