Return-Path: <devicetree+bounces-164346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB51A807B5
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 14:40:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 144CD1B8559D
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 12:34:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02AF926B2DA;
	Tue,  8 Apr 2025 12:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=nxsw.ie header.i=@nxsw.ie header.b="IqAcfCR5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-0301.mail-europe.com (mail-0301.mail-europe.com [188.165.51.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA53269801
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 12:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.165.51.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744115500; cv=none; b=owA7fJ7sC8kkotlviNn8lq78QtyXjs29Gf7efAhvb9FKUHX0DrPkH+sWlHyQsxqQsfo6fv0lFJ2mUykspQz+8E7z3DSrTIwjCG3d56nChgQ5eddonLxDvNEq3cCsS9BvdED9Uy2FeeV4vJaXOAq6f1fbHux4EZjF1YYmcK2eiZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744115500; c=relaxed/simple;
	bh=/xjDYd51GZDKC67cr5oh+RuVcExPIZyMfQrW4k8BCRI=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dGbsuaIJZqIg+9HxFXIXyZZmzoWCnf7ajQ4CoqjExFwuog0DmYEL3dwQxfSLB+LfjXoSVxTuXbJSepM2vImwqSq0NNT6EB+K44kS9ZBQUvtDtSWZ6A/stNgXTdxR4cIu9bkZtiB30fYxD3d5cXQdVJOFPudR41FgucysjPCnJcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=nxsw.ie; spf=pass smtp.mailfrom=nxsw.ie; dkim=pass (2048-bit key) header.d=nxsw.ie header.i=@nxsw.ie header.b=IqAcfCR5; arc=none smtp.client-ip=188.165.51.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=nxsw.ie
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxsw.ie
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxsw.ie;
	s=protonmail2; t=1744115487; x=1744374687;
	bh=2IL4cvpWRyKxFkiK66BFJ7FtNSwecxAxQTrHbcdLYQs=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=IqAcfCR5qENqrYMuLzgLdJUgLp89KlN23SuRQ8LAPVjaZs5FzvNYDL4v4Pug3FGYX
	 NA264A+DgqIHKRh9OM7d/l1/Z9h8BU8HnQ5YPUqhOfqMTpc7NBCBFFR0TB7JmhJ6JO
	 RVxeQLclEzcF4OheqB8wvA14gG6y6Seo+fm/Mb2n/gzFFX/wHQX56Qz950Dijf6CPc
	 c6+h9hn3VEzXrbt7h2JqR2oHq/ipZO32KMs1lkOg0NA3OhjjrrQO7HHaFLCYSrq8Dh
	 xePPljBQkKanuNyExLMCxzVgr8sr4uZD+8DGI+zjVXubGbR/tUa7TsqZAtZvmOSNqv
	 DfmanBMQn+rew==
Date: Tue, 08 Apr 2025 12:31:23 +0000
To: Neil Armstrong <neil.armstrong@linaro.org>, Vikash Garodia <quic_vgarodia@quicinc.com>, Dikshita Agarwal <quic_dikshita@quicinc.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
From: Bryan O'Donoghue <bod.linux@nxsw.ie>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/5] media: platform: qcom/iris: add power_off_controller to vpu_ops
Message-ID: <c499ff42-5179-43af-a3c6-201fc7afb283@nxsw.ie>
In-Reply-To: <20250407-topic-sm8x50-iris-v10-v3-2-63569f6d04aa@linaro.org>
References: <20250407-topic-sm8x50-iris-v10-v3-0-63569f6d04aa@linaro.org> <20250407-topic-sm8x50-iris-v10-v3-2-63569f6d04aa@linaro.org>
Feedback-ID: 136405006:user:proton
X-Pm-Message-ID: 93758b0b74a2ea9838f41ad5ab9fafbf93225c99
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 07/04/2025 16:24, Neil Armstrong wrote:
> In order to support the SM8650 iris33 hardware, we need to provide a
> specific constoller power off sequences via the vpu_ops callbacks.
>=20
> Add the callback, and use the current helper for currently supported
> platforms.
>=20
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>   drivers/media/platform/qcom/iris/iris_vpu2.c       | 1 +
>   drivers/media/platform/qcom/iris/iris_vpu3.c       | 1 +
>   drivers/media/platform/qcom/iris/iris_vpu_common.c | 4 ++--
>   drivers/media/platform/qcom/iris/iris_vpu_common.h | 2 ++
>   4 files changed, 6 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/media/platform/qcom/iris/iris_vpu2.c b/drivers/media=
/platform/qcom/iris/iris_vpu2.c
> index 8f502aed43ce2fa6a272a2ce14ff1ca54d3e63a2..7cf1bfc352d34b897451061b5=
c14fbe90276433d 100644
> --- a/drivers/media/platform/qcom/iris/iris_vpu2.c
> +++ b/drivers/media/platform/qcom/iris/iris_vpu2.c
> @@ -34,5 +34,6 @@ static u64 iris_vpu2_calc_freq(struct iris_inst *inst, =
size_t data_size)
>=20
>   const struct vpu_ops iris_vpu2_ops =3D {
>   =09.power_off_hw =3D iris_vpu_power_off_hw,
> +=09.power_off_controller =3D iris_vpu_power_off_controller,
>   =09.calc_freq =3D iris_vpu2_calc_freq,
>   };
> diff --git a/drivers/media/platform/qcom/iris/iris_vpu3.c b/drivers/media=
/platform/qcom/iris/iris_vpu3.c
> index b484638e6105a69319232f667ee7ae95e3853698..13dab61427b8bd0491b69a9bc=
5f5144d27d17362 100644
> --- a/drivers/media/platform/qcom/iris/iris_vpu3.c
> +++ b/drivers/media/platform/qcom/iris/iris_vpu3.c
> @@ -118,5 +118,6 @@ static u64 iris_vpu3_calculate_frequency(struct iris_=
inst *inst, size_t data_siz
>=20
>   const struct vpu_ops iris_vpu3_ops =3D {
>   =09.power_off_hw =3D iris_vpu3_power_off_hardware,
> +=09.power_off_controller =3D iris_vpu_power_off_controller,
>   =09.calc_freq =3D iris_vpu3_calculate_frequency,
>   };
> diff --git a/drivers/media/platform/qcom/iris/iris_vpu_common.c b/drivers=
/media/platform/qcom/iris/iris_vpu_common.c
> index fe9896d66848cdcd8c67bd45bbf3b6ce4a01ab10..268e45acaa7c0e3fe237123c6=
2f0133d9dface14 100644
> --- a/drivers/media/platform/qcom/iris/iris_vpu_common.c
> +++ b/drivers/media/platform/qcom/iris/iris_vpu_common.c
> @@ -211,7 +211,7 @@ int iris_vpu_prepare_pc(struct iris_core *core)
>   =09return -EAGAIN;
>   }
>=20
> -static int iris_vpu_power_off_controller(struct iris_core *core)
> +int iris_vpu_power_off_controller(struct iris_core *core)
>   {
>   =09u32 val =3D 0;
>   =09int ret;
> @@ -264,7 +264,7 @@ void iris_vpu_power_off(struct iris_core *core)
>   {
>   =09dev_pm_opp_set_rate(core->dev, 0);
>   =09core->iris_platform_data->vpu_ops->power_off_hw(core);
> -=09iris_vpu_power_off_controller(core);
> +=09core->iris_platform_data->vpu_ops->power_off_controller(core);
>   =09iris_unset_icc_bw(core);
>=20
>   =09if (!iris_vpu_watchdog(core, core->intr_status))
> diff --git a/drivers/media/platform/qcom/iris/iris_vpu_common.h b/drivers=
/media/platform/qcom/iris/iris_vpu_common.h
> index 63fa1fa5a4989e48aebdb6c7619c140000c0b44c..f8965661c602f990d5a705756=
5f79df4112d097e 100644
> --- a/drivers/media/platform/qcom/iris/iris_vpu_common.h
> +++ b/drivers/media/platform/qcom/iris/iris_vpu_common.h
> @@ -13,6 +13,7 @@ extern const struct vpu_ops iris_vpu3_ops;
>=20
>   struct vpu_ops {
>   =09void (*power_off_hw)(struct iris_core *core);
> +=09int (*power_off_controller)(struct iris_core *core);
>   =09u64 (*calc_freq)(struct iris_inst *inst, size_t data_size);
>   };
>=20
> @@ -22,6 +23,7 @@ void iris_vpu_clear_interrupt(struct iris_core *core);
>   int iris_vpu_watchdog(struct iris_core *core, u32 intr_status);
>   int iris_vpu_prepare_pc(struct iris_core *core);
>   int iris_vpu_power_on(struct iris_core *core);
> +int iris_vpu_power_off_controller(struct iris_core *core);
>   void iris_vpu_power_off_hw(struct iris_core *core);
>   void iris_vpu_power_off(struct iris_core *core);
>=20
>=20
> --
> 2.34.1
>=20
>=20
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>


