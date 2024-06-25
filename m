Return-Path: <devicetree+bounces-79728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7249891687F
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 15:00:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 642891C2322E
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 12:59:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AEB7158D8D;
	Tue, 25 Jun 2024 12:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hnd497tm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364E1158A26
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 12:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719320382; cv=none; b=gNjKtlrJlptA9GjneN8C1MVOlNizDtQP/T5JPhGyA6V2gdf1SFWkC0l3E2PgTJFpadPq8L2uZOBq5/bdp5cBKwIot7IWFcXF829bADpk+EtsbetKTU3+h+Un50FIRubkLOM5dWXCw1PB38QjfiArWJBhRuDF0gJKE66Cvq5GRCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719320382; c=relaxed/simple;
	bh=Yp7I2FiVKh+KMKAdM9SGW2FFGeM+i7tZKjv8+TY0Guw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CGUMw0ImkJff8mvDOVWJ617FXdoHwb+iuesT/6pmtMvCCxHuf40Zdhbyvt3dU8dVdmpBnlBpEHFrk6+CwY7xVHUIqu3dhooJShPUGESUuRXJFPtjfopEzLHGyyH4IPys0foOxICWy7e+ebZTAq6RYQy3tPbyRVZJ0XZDuHtuZGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hnd497tm; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-e02da9b2db7so5065230276.3
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 05:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719320380; x=1719925180; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=g3Ay60vtgcGfFCitsZDB5AKtYOW2UuaM+JMlbTIwmNo=;
        b=hnd497tm62Sjajb32ByHXpkMM+x5XO7+EVaK3fauWuhzMHVlDm8KbxweHUtX31N52t
         Ti036yskG51C9lUTC8Z2Iep8VmoUntU9B+ywPrEOAj0X1btU56jjcNVLW2eXkwr2zd8d
         XHrqvLBKFeXa7nC3j2i6a4sa0Sznk8dB+KU/YpooQueNKlkx4TTzLUYyIbWjMhjm4xiV
         zn5bxROJyxjPQpKWgPGp6zjdbfJO8t3zc9oeq3N+MYJARjJzioJ49gDoLvRtCSGvTdYF
         pszo4XWMTC/JIa7L/m7uNZWn1r1K5R/a47/PnMUg7/DMjkLzpqKuApvrZ1oD8mlheplK
         cPcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719320380; x=1719925180;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g3Ay60vtgcGfFCitsZDB5AKtYOW2UuaM+JMlbTIwmNo=;
        b=ojzeZZwRAinro1lwYtptAC7KXKlpDDfZ3+AdGVfj9+oME2sANgN0GlEbFFTg2LJ92X
         C00z4lpk8dVKaN2U8sf5qvrtd91WB9oAz0MuvPkYypW+FEKoIL6FpCB9YbGw4oGFsTr8
         rvxscXZX21DUintqKUENTFPSjhFq1ZFJJoLAnogSOD2yFv6eYPXZQiBbyrDRPkyuC2h5
         qZpImgjHUtFVcJL1KYPJpqstEpwgkA3C7LxQJ6AeCHaHGYG1zVTT7q2LGVk7Tu6Hcvf0
         WjlzkKNjzdO/4YRek9mwq+Ief+wz5Cdkn6/Mj9Ee6gtl8mIZYo4V6E4opwcAUNO+P24x
         xa7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWZzq3HQ7OBlzdg8wEaMSuMhKLpTEOIXZ6vMwh68tPYzpI4s0heYttE4B5h/RBEod5KYl590cQday3j6VSbWP0EUuCDE/NqmL64kA==
X-Gm-Message-State: AOJu0Ywx9gtVGyamyo0+2dtHkYaz8HJ5NkhXjnG/4nFCHuVND64rNgT7
	EWS+ue8SHWWOXfMVyASC40//0TXVYv3uMccIQqj5OktOZc9Gv5zHSPSBggK4gpsTU7Gq1+DusUr
	DKaG7yvAtXGyb0JZtdEy6FLPW3v5Yp7GfI4ry7w==
X-Google-Smtp-Source: AGHT+IG/uaVakkrgSD4WKuGcBcbaZo5fAtSTAyu0sxOZcikQA0BHcryR5jI9ISgR3vlev1QYzK5GUigCBoIhwmTN5Pk=
X-Received: by 2002:a25:69c3:0:b0:e02:bde0:f2ce with SMTP id
 3f1490d57ef6-e0303f7f157mr6765502276.31.1719320380162; Tue, 25 Jun 2024
 05:59:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240417133731.2055383-1-quic_c_gdjako@quicinc.com>
 <20240417133731.2055383-6-quic_c_gdjako@quicinc.com> <CAA8EJppcXVu72OSo+OiYEiC1HQjP3qCwKMumOsUhcn6Czj0URg@mail.gmail.com>
 <CAA8EJpr3GYimirDz39f4n-3hDAxFWzo+9fdY6MAuxaNguouVFg@mail.gmail.com> <3e816509-a12b-4658-85f4-c0d0037c6a64@kernel.org>
In-Reply-To: <3e816509-a12b-4658-85f4-c0d0037c6a64@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 25 Jun 2024 15:59:27 +0300
Message-ID: <CAA8EJpr1G4eq5xJn0z2JQmpXY89UK13uk2BWJCgROsFP_-NkQw@mail.gmail.com>
Subject: Re: [PATCH v8 5/7] arm64: dts: qcom: sdm845: Add DT nodes for the TBUs
To: Georgi Djakov <djakov@kernel.org>
Cc: Georgi Djakov <quic_c_gdjako@quicinc.com>, will@kernel.org, robin.murphy@arm.com, 
	joro@8bytes.org, iommu@lists.linux.dev, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	robdclark@gmail.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	quic_cgoldswo@quicinc.com, quic_sukadev@quicinc.com, quic_pdaly@quicinc.com, 
	quic_sudaraja@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 25 Jun 2024 at 15:57, Georgi Djakov <djakov@kernel.org> wrote:
>
> On 25.06.24 10:50, Dmitry Baryshkov wrote:
> > On Fri, 14 Jun 2024 at 21:05, Dmitry Baryshkov
> > <dmitry.baryshkov@linaro.org> wrote:
> >>
> >> On Wed, 17 Apr 2024 at 16:39, Georgi Djakov <quic_c_gdjako@quicinc.com> wrote:
> >>>
> >>> Add the device-tree nodes for the TBUs (translation buffer units) that
> >>> are present on the sdm845 platforms. The TBUs can be used debug the
> >>> kernel and provide additional information when a context faults occur.
> >>>
> >>> Describe the all registers, clocks, interconnects and power-domain
> >>> resources that are needed for each of the TBUs.
> >>>
> >>> Signed-off-by: Georgi Djakov <quic_c_gdjako@quicinc.com>
> >>
> >> This patch now prevents interconnect drivers from hitting the sync
> >> state on SDM845.
> >> The TBU driver is enabled only when the ARM_SMMU_QCOM_DEBUG is
> >> enabled, which is not a typical case on a normal system:
> >
> > Georgi, before I start acting like a bull in a china shop and sending
> > reverts, any update from your side?
>
> Hi Dmitry!
> Thanks for the report! We can easily add status = "disabled" to the DT
> nodes, but please give me some time to take a look what would be the best
> way to handle this, as i was out last week and now i am still catching up.

I think the simplest thing would be to move the TBU driver to the
arm-qcom-smmu.c instead of having it in the -debug.c

>
> BR,
> Georgi
>
> >
> >>
> >> [   26.209151] qnoc-sdm845 1500000.interconnect: sync_state() pending
> >> due to 150c5000.tbu
> >> [   26.217228] qnoc-sdm845 1620000.interconnect: sync_state() pending
> >> due to 150c5000.tbu
> >> [   26.229926] qnoc-sdm845 1500000.interconnect: sync_state() pending
> >> due to 150c9000.tbu
> >> [   26.238008] qnoc-sdm845 1620000.interconnect: sync_state() pending
> >> due to 150c9000.tbu
> >> [   26.249068] qnoc-sdm845 1740000.interconnect: sync_state() pending
> >> due to 150cd000.tbu
> >> [   26.257127] qnoc-sdm845 1740000.interconnect: sync_state() pending
> >> due to 150d1000.tbu
> >> [   26.265159] qnoc-sdm845 1740000.interconnect: sync_state() pending
> >> due to 150d5000.tbu
> >> [   26.273189] qnoc-sdm845 1500000.interconnect: sync_state() pending
> >> due to 150d9000.tbu
> >> [   26.281206] qnoc-sdm845 1620000.interconnect: sync_state() pending
> >> due to 150d9000.tbu
> >> [   26.289203] qnoc-sdm845 1500000.interconnect: sync_state() pending
> >> due to 150dd000.tbu
> >> [   26.297196] qnoc-sdm845 1620000.interconnect: sync_state() pending
> >> due to 150dd000.tbu
> >> [   26.305201] qnoc-sdm845 1500000.interconnect: sync_state() pending
> >> due to 150e1000.tbu
> >> [   26.313207] qnoc-sdm845 1620000.interconnect: sync_state() pending
> >> due to 150e1000.tbu
> >
>


-- 
With best wishes
Dmitry

