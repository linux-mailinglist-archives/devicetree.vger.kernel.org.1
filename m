Return-Path: <devicetree+bounces-151137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F04A6A448C9
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 18:47:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5FE1C16A700
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 17:42:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 092F519DF7D;
	Tue, 25 Feb 2025 17:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lskBRkid"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAC019CC34
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 17:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740505320; cv=none; b=SzYgkrCuRmTZ9vZAuV01eEknNYfGDqoBlGQ7gpzbGOGrEwvnvYLgc8TuxtPDpQcfmjQ6oA4RpzbkaRvNfwKCmxzA8iSiMQE/zFSBNMtKEQVCSAKYXQyB88mCioO0joNiWdla6c9OijMypxYATDk8MprShwGa9X7+AkuluEdAh8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740505320; c=relaxed/simple;
	bh=70HK7HBG2n7VP/Z60nAkf4u8jZifgdcTpHsjW7quBFg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jOD3h6kfEpW7bNOQSw2K6GCbuXWtwfbEOo0hhC9kqA9FE1WjZaMz05aGURndulcUDDIO4fGLXC3yU5EvEF4ztPhVfcrHhwFfKNFm3QekU6RqFK52PtNKGXd/7Oni6XYG9HtvfQfu/oUHj/4ZcpMB7PShIzgKFcbaisL7Z3C0IkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lskBRkid; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-30737db1aa9so57410601fa.1
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:41:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740505317; x=1741110117; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hGyWaQIzn0tRIGg7LsrZt14gQY4q2FyEI8TrfL/lzng=;
        b=lskBRkidox4vBKQO/WemNZw4InkdhTbjvYSuTviij8WzW0Kep96MrQfQNcpBx5oMx/
         dhXo1LHQG8oFk60VZk04Twh/UlXy7E8vozcb0GRmsbLbF5fvgroPYBHK/SvDxxNma2nW
         RawP8cBhRu19xrv5iCdxIeCpVHexItJ5Amqozg+eICFbhl4UMqrGJkzt+imYp1kwgkJS
         AYQD/I7mBbl3HhVlMlb/x5GNr2ibJ5F/XnyfqE2PEjbP2KH4/Iz1qmrOaM2zuQ93vzXl
         O149qSw7jzFNzzeW8Ef1tgcL/PyJLnIlDtkCW1zfiWuWAB4IlYzzMG8VXcld2dSpgqG1
         Fi5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740505317; x=1741110117;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hGyWaQIzn0tRIGg7LsrZt14gQY4q2FyEI8TrfL/lzng=;
        b=ldhjbHIZpmXmb6D4jyVffp+Ol7qx8Kr6clU1WjeUP10/GyF0TCgd+ZnJO6QEM+7Yzf
         TXTEaiq7HTDlT3rOWZd5yMychrQofyhI0bfUDqO5F/k0TMwdlm5hul4F8ECRvHpbc2e9
         zZzSODiM3sHvprkbb9D3+uchqRLAIq5mWMea7KmMHyw0pzpd+VEoiT2ShzgUwhwyzdzG
         aOGq72/rO5IBuNJNEyzeI0yqGuCaNhCc1IdNKonQ0EZvY+4QCqJQggFBAHJp+ThPZSvk
         rsZESVcBQFMPHW1hO5bguUe9PZf7dBHnV+UuRl2rPWGPiuDUrpcr58oBdW+4+2KzDpBe
         KH5g==
X-Forwarded-Encrypted: i=1; AJvYcCW6AmeLI0rZ/mqOY+Xdy7YPJExEojcZ32yoWOc72T6Q7Yh2jwoWDjxMyRLmUjZQCGeRXSZQcRKz+sFg@vger.kernel.org
X-Gm-Message-State: AOJu0YyA4v6Sy0t8xgZissoXsnn8lHMYX9S9nxKJ892IxoYkYCXa5nqV
	fx2hM6ynRyIrdJ1xSsPk9wfR/takTBZzpW7ZayuO++dCsNTTiv8cnf49hY9MXlkz5J+JZrvJCKk
	Z
X-Gm-Gg: ASbGncsMsnhblgEKUEZzo8QtVbZ2fDOIVS0grH6NYELxNiFjOQfSN6Evw5xbtInvXFC
	9qgMQVc2vKlzX4TC/P80sU8sqFS5ERqh66LaUzgKvDiF+DwPKtlC6e/jXZVYHyIHFu0k1jQgMwi
	AUQp2DbNC6xJH26yQrS5pQONkQtunj+ME4be5/XqG2QTyDUwTnzJ3KGn9PIlE2i2OJQkOK0Joeu
	Z7Wz6IIGCXa91xkVIRO89GLxQnQP5YEFxSX3aMDzoiSb4Vqr5gFuH+UxxRZbJ13MSg9DKDWL+3c
	DyAXNDR7rhpuu7JpPuUlZ7hdZbnP6WNePoor+Mxb6pqUplD2Qc5v1spDZZvhMAlayfyl8z9sQwy
	d0sM6vA==
X-Google-Smtp-Source: AGHT+IHEne9NXWRmeaKHFaxNKBm56TZDZJt9JjVGVe+iGN7IpuMXMithW5dQI52NU795ttOePGE2zg==
X-Received: by 2002:a2e:9f47:0:b0:30a:45af:c18d with SMTP id 38308e7fff4ca-30b792d7e3cmr4328091fa.25.1740505317050;
        Tue, 25 Feb 2025 09:41:57 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30a81ac3151sm2797611fa.68.2025.02.25.09.41.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 09:41:55 -0800 (PST)
Date: Tue, 25 Feb 2025 19:41:53 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	robdclark@gmail.com, sean@poorly.run, marijn.suijten@somainline.org, 
	andersson@kernel.org, robh@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org, 
	konradybcio@kernel.org, conor+dt@kernel.org, andrzej.hajda@intel.com, 
	neil.armstrong@linaro.org, rfoss@kernel.org, Laurent.pinchart@ideasonboard.com, 
	jonas@kwiboo.se, jernej.skrabec@gmail.com, quic_abhinavk@quicinc.com, 
	quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com, quic_jesszhan@quicinc.com
Subject: Re: [PATCH 07/11] arm64: dts: qcom: sa8775p-ride: add anx7625 DSI to
 DP bridge nodes
Message-ID: <2jsornaajavpg6srqzjuwvzt4usvmzmwqdbzw2bydgxisfsrdy@csujibqx2zi3>
References: <20250225121824.3869719-1-quic_amakhija@quicinc.com>
 <20250225121824.3869719-8-quic_amakhija@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250225121824.3869719-8-quic_amakhija@quicinc.com>

On Tue, Feb 25, 2025 at 05:48:20PM +0530, Ayushi Makhija wrote:
> Add anx7625 DSI to DP bridge device nodes.
> 
> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi | 136 ++++++++++++++++++++-
>  1 file changed, 135 insertions(+), 1 deletion(-)
> 

Missing dp-connector devices. Please add them together with the bridges.

-- 
With best wishes
Dmitry

