Return-Path: <devicetree+bounces-72318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7E88FB566
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 16:33:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4C1331C2362F
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 14:33:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D41913D270;
	Tue,  4 Jun 2024 14:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="p/Eygaex"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696FC144D10
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 14:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717511515; cv=none; b=J0JVSnpKl516rQIxL5kWOsmSOrymTjSJOPe3IadBxAoTD+n8PZA6p44duYGaqDeD4qAf0UoFKsYB4Q7rqilLnKFK1PkqBZ6NfNNwLU8CWh70ueWySZxgcTRJf7CJgbaHx7GxtbGfrucPNOyjUQgI3/K3CGzURuOTptLbKFPrf8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717511515; c=relaxed/simple;
	bh=gGDKWu3B5VRRZlu7zBNJnku5j12cvC/da0ucF6mg0aE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=i5IBigmFa19FvzEF1zyZqnYhRfg1JoO0fn9M1C6lnAB2IDQwPd6SxFMvrR83gLWiOa3e5B5dFcn8KdLytPTsjHzxSs8DaeZQfZIiuTNCr5NLYwW52DXwiA2tW7hNUjG2ie5QqqvQao2o+jQITqyiH0cQBd+pzYR+gBfpw9iQJ3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=p/Eygaex; arc=none smtp.client-ip=209.85.160.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-44024f5271dso154761cf.1
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 07:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1717511512; x=1718116312; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w8l00WT5M+hkw2d4NnjSJbqOkW1RZzStGuA1CvK2sUM=;
        b=p/EygaexJi7LiNUYm14Ga7G/St6vgZsjA1Cb63va3SQhJc/tb41xAgPHSjkhe0nATs
         ZQ4NvaSkYer9B/COM8Buefb9bTtzQLdPKZD/NGgra8FFvvcmSafjPJqZS5jCtcQV8A8f
         mwBHemakOoFwylGIUl4JcFjUjRQDhfdgn3g7ueSOVHndqGfm6Xg+iRV5z6JGapYkqckn
         F8Y+D1YFv1jtFGafYI2NxQb9BRpc6CAVBq9TWhU2mPrUVVHhw805+/ZNd+zFgRQb+Hv5
         7u85aQ//pfdjbuNdC+5yDiiqK9wPwyK+WbOXgsT41UQtgWfnmsODkZ4gEjUL2Yz2LdxD
         f7JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717511512; x=1718116312;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w8l00WT5M+hkw2d4NnjSJbqOkW1RZzStGuA1CvK2sUM=;
        b=XWMlyhHY/Off93xaC2q9ZwFbhk4ro9QUsdsJXPb6ygXXslUBOibX2DS/VQf36mUg8x
         I2REMZ0+BTq/f9agC8oCPaqzvsC8LijaNE9XquYAn/t2eHXjlf5LvUS8IF5Z03hkLWuY
         3treWp3YtgDYj0wXRELbWrWL9+BG2dKg2DUoWywZ2C+Bda5ahLUZKBJg6QSC9VY54+3y
         HBS7lA+ug5HZfqNcWD/b2sHtlhB6KuKlU9tGgzarIdPnEALkpO/vqoOA8fRJyoc/AHH9
         UsBUqVQx265vCt+QRrvjaOiNFAWzYh4zV/unBwChR3M3FEXddGaMq1b7JWhqcskwT1d4
         qGBg==
X-Forwarded-Encrypted: i=1; AJvYcCXxdnoa8y3dNgX8Am0JmPYqJ4MFD8iA1dCa/9YCgOIQkn6izziiGj7hyDPb+gLdKhcDsxA6nfj08fHZtQTqbI28DChnVQahBJitkA==
X-Gm-Message-State: AOJu0YyRsuS0ftPdbk70PTScc0EG5NPJON44o2+3w8ZJro3G/urdoc1R
	bDKXex0ukTr3rZPh6AEt/A56wyMDAw+8iBEShnCfmcDNHI8dpbHGXUMyTNO8nHM2nNiYbu3bnGQ
	GhzIuLjq0plaEB6iQUIaZJWLhAHF+FmkcCzLf
X-Google-Smtp-Source: AGHT+IH/O61+QNBbKWIt4c3u1Z1AJi93HK8DE8/RW5ricyD3nsufx056k6EOeUUTHgwQelBTxwPZMgXy8F51jYSIh54=
X-Received: by 2002:a05:622a:6116:b0:43a:db0c:ed9c with SMTP id
 d75a77b69052e-4401e63ced6mr2558031cf.15.1717511512081; Tue, 04 Jun 2024
 07:31:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240604060659.1449278-1-quic_kriskura@quicinc.com> <20240604060659.1449278-2-quic_kriskura@quicinc.com>
In-Reply-To: <20240604060659.1449278-2-quic_kriskura@quicinc.com>
From: Doug Anderson <dianders@google.com>
Date: Tue, 4 Jun 2024 07:31:35 -0700
Message-ID: <CAD=FV=XKKtd3vArUzo+5_o17Prm-G5_tLBCzv+5q3gp_UfR8gQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: sc7180: Disable SuperSpeed
 instances in park mode
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: cros-qcom-dts-watchers@chromium.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <swboyd@chromium.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Matthias Kaehlcke <mka@chromium.org>, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, quic_ppratap@quicinc.com, quic_jackp@quicinc.com, 
	stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jun 3, 2024 at 11:07=E2=80=AFPM Krishna Kurapati
<quic_kriskura@quicinc.com> wrote:
>
> On SC7180, in host mode, it is observed that stressing out controller
> results in HC died error:
>
>  xhci-hcd.12.auto: xHCI host not responding to stop endpoint command
>  xhci-hcd.12.auto: xHCI host controller not responding, assume dead
>  xhci-hcd.12.auto: HC died; cleaning up
>
> And at this instant only restarting the host mode fixes it. Disable
> SuperSpeed instances in park mode for SC7180 to mitigate this issue.
>
> Reported-by: Doug Anderson <dianders@google.com>
> Cc: <stable@vger.kernel.org>
> Fixes: 0b766e7fe5a2 ("arm64: dts: qcom: sc7180: Add USB related nodes")
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
> Removed RB/TB tag from Doug as commit text was updated.

It was a minor change so you could have kept my tags (especially the
Tested-by, which isn't affected by the commit text), but in any case:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
Tested-by: Douglas Anderson <dianders@chromium.org>

