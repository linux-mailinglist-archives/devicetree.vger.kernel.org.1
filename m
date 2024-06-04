Return-Path: <devicetree+bounces-72319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D708FB56F
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 16:33:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F2DC328147C
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 14:33:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80DD8147C9B;
	Tue,  4 Jun 2024 14:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="LkI6+JNM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E09FC13D510
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 14:32:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717511529; cv=none; b=VL+WASfj776mivBr4CGChLkP3O+6C/bbuUws+SObu/KUhWQNRSeXEguX9cWQqxOlbOP5/Lx67QYGlsiFh1v+fVIR7xKC5hy3Bs0BZh6dRoT7jTYTJBZHCSXETLdTjz/cft2VcifZ/sWK3SRkSwHOlbj2Hr/MygpBOgckTrMCjQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717511529; c=relaxed/simple;
	bh=vGp3ovyzZdpRyR1W94NZG7tQypJhWhNwsTCZl5Q5Tek=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CYcd3+zA7WSvCNRO8cjHQjZ4A5Lsre6/ML9FmsPVKiTgfpe8zobexVQWeIui8wYALqnGMbTC+VP01NhKGQ83Tw+KG9iGvKPbLKjpe6FxQ7otHAaIpM+T6W6dA3KGPzuMMBA7EouMg3bwxHdb6JLpkoyy3ZDoltzmQOLuWGgKocI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=LkI6+JNM; arc=none smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-44024f5271dso154951cf.1
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 07:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1717511527; x=1718116327; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MQpV5dfzXhIlBBaFJofdAT+Rq9XDrHNaF91R1+IyrHc=;
        b=LkI6+JNMt1F0RRNeLll1QIsHMvQxiCjqW1gXv2DFYNoNFmgTlElyO/6KjY2PkULOrw
         wRNzhnFnwhcpZcX9r2PBIHFujdKUCHjMI38Stx6NyM1HATAD23wffY1njCNq6yKS+VfR
         fbYtb2UIAQ+kFaRxfe30jzWYnGK9Q2Em9SDm5VPajyZrViBqzSSBi82MKnX+cLh2agKu
         tS7Gv7dYcddz1sKY8fuzvNfLK7acFxTC994WvRUIYJXulljBZTkWFpi0ELhIDcOXKZBp
         /bPiua2rE/q0UI5XuJkgr+huafEMtvlgt0kNQ0+OnO5h3RzWsDtcYAoEVXTpH0lGHk2f
         6PGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717511527; x=1718116327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MQpV5dfzXhIlBBaFJofdAT+Rq9XDrHNaF91R1+IyrHc=;
        b=gVBlPH7lksgL7BweoEmOYPblI4LwlxGWQsQECPNvgDZJXqKqarQEC12pHrJLmtVsrR
         GlmrNlqQBVIndMIiWB+1Ozq0vY6XF6MXHrjE49zDN0p2pHbmfk3Zr1s18dUmfqdwcIFA
         GDSBAdR/+yksUfLGO4IbnGZof6hbNG5N4UX6UCUatB9IkIfSfjYEpjG0gd7xJgxqklFp
         hAbxFylRAJn3EYzQ5STQHYiqOxRczyj3S3RDUCpPTMqg/3AlNpD/r9ZgPr/aAYVDa5zh
         0gZXg5Oe31VSlsnZ5LsSYYFBvPO6aF4gFO28g3Bjlxw67iUQ+lNBc1Qxye+WZLgz7T+8
         XkKg==
X-Forwarded-Encrypted: i=1; AJvYcCWvcpHn2uwo+PmixAXRcHfdRGhCoBndagXuDzrDJvEqvbYa3xoTmUNJO/k4frWw94WTlUAYfuKm0iZ34o4VPXZdwzH1Zpm1/GYAuw==
X-Gm-Message-State: AOJu0Yxf8uJqZ9BzL2mBRr+0eszlFIY7R6WyahXbMaROZTfM8qiXslrD
	ohwjFIk1rY9ma6PtfUd3dI8M0WmD19dPZUX2iO8VlBtVSl4vDSO8O1NvxkkDl8G/8qDNR2EcU33
	B9zW8yaRJquUZWeLX8ft9upTKhaXsiN8IDl8D
X-Google-Smtp-Source: AGHT+IGEpedUSaa44exiq+so0jKgv5XcNH+0+P8IoQJ2kUlE8+YPjvD8hE8Ie7JCngfSpIvxHm8sJNewp7aY8fLH1PQ=
X-Received: by 2002:a05:622a:7392:b0:440:1fb0:1726 with SMTP id
 d75a77b69052e-4401fb017d1mr1630971cf.19.1717511526273; Tue, 04 Jun 2024
 07:32:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240604060659.1449278-1-quic_kriskura@quicinc.com> <20240604060659.1449278-3-quic_kriskura@quicinc.com>
In-Reply-To: <20240604060659.1449278-3-quic_kriskura@quicinc.com>
From: Doug Anderson <dianders@google.com>
Date: Tue, 4 Jun 2024 07:31:54 -0700
Message-ID: <CAD=FV=VpYVE6hksZiyVTG+9qOZnpdyt45Av5JizeUiOHaVzvjg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sc7280: Disable SuperSpeed
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
> On SC7280, in host mode, it is observed that stressing out controller
> results in HC died error:
>
>  xhci-hcd.12.auto: xHCI host not responding to stop endpoint command
>  xhci-hcd.12.auto: xHCI host controller not responding, assume dead
>  xhci-hcd.12.auto: HC died; cleaning up
>
> And at this instant only restarting the host mode fixes it. Disable
> SuperSpeed instances in park mode for SC7280 to mitigate this issue.
>
> Reported-by: Doug Anderson <dianders@google.com>
> Cc: <stable@vger.kernel.org>
> Fixes: bb9efa59c665 ("arm64: dts: qcom: sc7280: Add USB related nodes")
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
> Removed RB/TB tag from Doug as commit text was updated.
>
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

