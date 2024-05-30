Return-Path: <devicetree+bounces-70862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E528D4CC8
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 15:30:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 25CC01C216FA
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 13:30:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 773C917D37E;
	Thu, 30 May 2024 13:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="2pXEVbgt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E21717C234
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 13:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717075844; cv=none; b=fVvzTpCf3tLfDgUkWQ6Srl6W4Jim9vr79N4fL6VdYwVVlS9uyysX6Iy2CEZyqWMJE92H164Te5GyuLEALAClw0tNqz+Ynwzk2s8UN6udgYmciGxddKi5N3UP2NpdnbNujWkUJGQD2k5Ug44UjWWmmPl3YvcDAb/Nm1WVCtBrYXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717075844; c=relaxed/simple;
	bh=EbCIr2vQd6v/UepcBv0vSQxRCcD51fuU44nOE8Zqcjo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WQO5W6vr7ignSUS2+Ew12rBO8OvCRuEBU0+A1TlVLi4IzdL1IWTmSCwV3WtDNnB5QCOkGv+TPk8sHrOrxs56/R6IsZasfIokA+81bHMvL73o3JvoAb0CnSl7QcTCVXtRqRfO4IIdsYpDA2+7m3xVberbMiUKyU36F7J0lNfvxMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=2pXEVbgt; arc=none smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-43fe3289fc5so279251cf.1
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 06:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1717075841; x=1717680641; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8ZXkKgvuTnGu9jT+KUX2KYjiff1KxpNRdNPNMddfEKw=;
        b=2pXEVbgtfXNQJ5sh1DI8ef/nsyKgQYPEqb3anFO4GRJgSXCMSvuup1WZ8Hp0Lpi7W/
         UdXAvRY+PsZnPBMLTBtPsCGjiXRHCa5vEXsVvkB5Ob3wqfwos8v9raLid2XIgqkYaPp9
         i5qtTcGFXJSvYRp9/QzMzp2MLtsGmV62jMgSlmYU+Q6U5puBVf5j1okpy6XbZs+59g0A
         ixn4v81VxNAMyZx9++924/+D+lcU2B6izFXzj6HztJ1aUn59zV/D9eMESBgmfIEgrS8I
         bpqNWb/W0XTk7A0b2/hwheYYSUzaD+oNxV31J055d3AeBfUNFogJGiTOxRMKcJDWN8Qp
         YKUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717075841; x=1717680641;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8ZXkKgvuTnGu9jT+KUX2KYjiff1KxpNRdNPNMddfEKw=;
        b=I49hcsGV3awbHRnp2MW9m7KfGc39ahBIbkTc02EkOgmY4p1GoYThmN8iTXe9QuhsDq
         BCq3F6xXS/0M+1RQcb5fbDJSXdKppGRXdhbXqtA94JqyU6H1hu4kMSVj/8XdaOQf24gk
         6mvwo3XXQrwcbryWkJCU6LxLzDr/62J244OP4f08RLwjhKaKVzFfKi+V8DJn0m1sTmVr
         wYHSpEo//g9SzXxT25ouSP8zXFC/dDNHKn7EKAGArrEvz7iSNt4+xwF8H6LljA/edDXy
         RuRmpkoVd6336hetHGrdZXQIIsaS9ylfl/WLeKnLHcxwmMPDyUCxWionr0hCLaikFdwz
         kAew==
X-Forwarded-Encrypted: i=1; AJvYcCWj9rM1J4WajPLjGDSJDbnleIhmMkOplWeVN/ty34D7OCnTnSDAGPwOiXnzEIk9oADuCOVtdQUAzaAivo5sBo6p4bGHJqhSA+TetA==
X-Gm-Message-State: AOJu0YzzoNObasef95FjH4OuUGwVOL7VkKN+GPb7AwvHuhC+BfYryO+C
	JVGDuI3K6OQprVSHbIQuqcs3706EXtwYhPH/lm86Kml1Yrk3Y80t9hFahZQpG34M1CsXtCyr0RH
	U1k+jNdxYAFClBxkJZWk0cH0aNZGNF9NTWTBM
X-Google-Smtp-Source: AGHT+IHp6ul6mGglbYpgjttSroYSPr1ojKdlWjH9/BeOaHLo+Qgzs0pC8gze9GA3WkL92NKLQXVOpcB9uIriM6v4gDU=
X-Received: by 2002:a05:622a:510e:b0:43d:e294:3075 with SMTP id
 d75a77b69052e-43feb3a29f9mr2840601cf.7.1717075840883; Thu, 30 May 2024
 06:30:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240530082556.2960148-1-quic_kriskura@quicinc.com> <20240530082556.2960148-2-quic_kriskura@quicinc.com>
In-Reply-To: <20240530082556.2960148-2-quic_kriskura@quicinc.com>
From: Doug Anderson <dianders@google.com>
Date: Thu, 30 May 2024 06:30:23 -0700
Message-ID: <CAD=FV=V1Z029z08j3ppTyHmHEZ_MpN0WKDMGG7GgkH9rieUiow@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sc7180: Disable SS instances in
 park mode
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

On Thu, May 30, 2024 at 1:26=E2=80=AFAM Krishna Kurapati
<quic_kriskura@quicinc.com> wrote:
>
> On SC7180, in host mode, it is observed that stressing out controller
> in host mode results in HC died error and only restarting the host
> mode fixes it. Disable SS instances in park mode for these targets to
> avoid host controller being dead.
>
> Reported-by: Doug Anderson <dianders@google.com>
> Cc: <stable@vger.kernel.org>
> Fixes: 0b766e7fe5a2 ("arm64: dts: qcom: sc7180: Add USB related nodes")
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
Tested-by: Douglas Anderson <dianders@chromium.org>

