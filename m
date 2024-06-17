Return-Path: <devicetree+bounces-76562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8182F90B53B
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 17:51:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5095EB3BB0C
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 14:54:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E8A9166317;
	Mon, 17 Jun 2024 13:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="KuvMXqmJ"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541671E480;
	Mon, 17 Jun 2024 13:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718632602; cv=none; b=XYOMWDJ7ssBMk3MGiMnw6nmGvsJNiVLN9ODopsj4SLWrnotTIDji3sJ68S0gEn+kAD9v+ZJK7shwoOQmqH/0SjCTUXKKDo/On5/THEwgl8uQHMTPEsFHfDTWYoAwELWfF+h+Me5XZpWGa3nIYtdGe/TP+D3O1i+z3S/SvFacAbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718632602; c=relaxed/simple;
	bh=zQGJ9XjTKTbkH7YWMY/nrfvoG1nbgCyqMPKrlVdH12E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=fg4hBTHb3+8iNzpdH8/G7dGm0jFS2NGcxml90DN/Vew0DI0MmRQlIQ66At5SHtLdK51gruawrOg2kjMB4JHQ4+AN0hZGcldHFIrMgkE6NAUxtCHtHuc+b5RraAzztwxC/bf4fM6LsJruOUVfdltcudomuKgnkV6KlashevbDqlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=KuvMXqmJ; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718632596;
	bh=zQGJ9XjTKTbkH7YWMY/nrfvoG1nbgCyqMPKrlVdH12E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KuvMXqmJw46tA5/K5T2xSPHywXh9J6OyQbjC+kFrLiPN6g6ljIvO4b0g+GN5RZ39F
	 diT95cCuRp9Ci4SqiS8pZvzYxG/MQ6qGdpZhRVi/CeX/r8VnvCCv7oThrn3m+GTBbO
	 fM4/Kn2Kby0mQ2srjwO/Ex/5sqazPD7wjWbWHT7h2KPzuIKGJxsOE03Th/iqYsm5sv
	 Eg5+DgbjIVl/P9d/2WQjewFbuoC4BNB6mnV4XTGPq2XwZN5+eNpxxlms/3lwXsxH1A
	 qzABvjZA7ZfqKvTDLahL9IZCzd3eaIif5xoCrQCzTIFbX2C04+ug+rR3DSjWtoJPcN
	 88X+Ik3I7hBMg==
Received: from arisu.localnet (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 89C9537803EE;
	Mon, 17 Jun 2024 13:56:33 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: linux-kernel@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>, Alexey Charkov <alchark@gmail.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Diederik de Haas <didi.debian@cknow.org>, Andy Yan <andy.yan@rock-chips.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
Date: Mon, 17 Jun 2024 09:56:06 -0400
Message-ID: <5616757.aeNJFYEL58@arisu>
Organization: Collabora
In-Reply-To: <ba1c653e-6453-46ec-932b-ea2b9042d228@kwiboo.se>
References:
 <20240615015734.1612108-1-detlev.casanova@collabora.com>
 <20240615015734.1612108-2-detlev.casanova@collabora.com>
 <ba1c653e-6453-46ec-932b-ea2b9042d228@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5623076.44csPzL39Z";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart5623076.44csPzL39Z
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
Date: Mon, 17 Jun 2024 09:56:06 -0400
Message-ID: <5616757.aeNJFYEL58@arisu>
Organization: Collabora
In-Reply-To: <ba1c653e-6453-46ec-932b-ea2b9042d228@kwiboo.se>
MIME-Version: 1.0

On Sunday, June 16, 2024 5:40:25 P.M. EDT Jonas Karlman wrote:
> Hi Detlev,
> 
> A few quick notes below, will do a more in depth review later.
> 
> On 2024-06-15 03:56, Detlev Casanova wrote:
> > This driver supports the second generation of the Rockchip Video
> > decoder, also known as vdpu34x.
> > It is currently only used on the RK3588(s) SoC.
> > 
> > There are 2 decoders on the RK3588 SoC that can work in pair to decode
> > 8K video at 30 FPS but currently, only using one core at a time is
> > supported.
> > 
> > Scheduling requests between the two cores will be implemented later.
> > 
> > The core supports H264, HEVC, VP9 and AVS2 decoding but this driver
> > currently only supports H264.
> > 
> > The driver is based on rkvdec and they may share some code in the
> > future.
> > The decision to make a different driver is mainly because rkvdec2 has
> > more features and can work with multiple cores.
> 
> Please elaborate on the "more features" part, to my knowledge the main
> difference is multiple cores and updated/extended regs.
> 
> Is more features refering to the linked list/table feature?, a feature
> already present in the vdpu341 (rk3328) variant.
>
> Hopefully both drivers can be combined and/or share common parts before
> this leave staging.

Yes, those are the features. There are also small differences in the PPS fields 
(pic size field width is bigger here, which changes the alignment later).
I don't know if other differences exist, but although I don't believe the 
drivers should be merged (Avoiding recreating a bigger complex driver like 
hantro), sharing code for the 2 drivers would be great.

> > The registers are mapped in a struct in RAM using bitfields. It is IO
> > copied to the HW when all values are configured.
> > The decision to use such a struct instead of writing buffers one by one
> > 
> > is based on the following reasons:
> >  - Rockchip cores are known to misbehave when registers are not written
> >  
> >    in address order,
> >  
> >  - Those cores also need the software to write all registers, even if
> >  
> >    they are written their default values or are not related to the task
> >    (this core will not start decoding some H264 frames if some VP9
> >    registers are not written to 0)
> >  
> >  - In the future, to support multiple cores, the scheduler could be
> >  
> >    optimized by storing the precomputed registers values and copy them
> >    to the HW as soos as a core becomes available.
> > 
> > This makes the code more readable and may bring performance improvements
> > in future features.
> > 
> > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > ---
> > 
> >  drivers/staging/media/Kconfig                |    1 +
> >  drivers/staging/media/Makefile               |    1 +
> >  drivers/staging/media/rkvdec2/Kconfig        |   15 +
> >  drivers/staging/media/rkvdec2/Makefile       |    3 +
> >  drivers/staging/media/rkvdec2/TODO           |   13 +
> >  drivers/staging/media/rkvdec2/rkvdec2-h264.c |  899 ++++++++++++++
> >  drivers/staging/media/rkvdec2/rkvdec2-regs.h |  372 ++++++
> >  drivers/staging/media/rkvdec2/rkvdec2.c      | 1160 ++++++++++++++++++
> >  drivers/staging/media/rkvdec2/rkvdec2.h      |  123 ++
> >  9 files changed, 2587 insertions(+)
> >  create mode 100644 drivers/staging/media/rkvdec2/Kconfig
> >  create mode 100644 drivers/staging/media/rkvdec2/Makefile
> >  create mode 100644 drivers/staging/media/rkvdec2/TODO
> >  create mode 100644 drivers/staging/media/rkvdec2/rkvdec2-h264.c
> >  create mode 100644 drivers/staging/media/rkvdec2/rkvdec2-regs.h
> >  create mode 100644 drivers/staging/media/rkvdec2/rkvdec2.c
> >  create mode 100644 drivers/staging/media/rkvdec2/rkvdec2.h
> 
> [snip]
> 
> > diff --git a/drivers/staging/media/rkvdec2/rkvdec2-regs.h
> > b/drivers/staging/media/rkvdec2/rkvdec2-regs.h new file mode 100644
> > index 000000000000..a214597cdcdc
> > --- /dev/null
> > +++ b/drivers/staging/media/rkvdec2/rkvdec2-regs.h
> 
> [snip]
> 
> > +
> > +/* base: OFFSET_COMMON_REGS */
> > +struct rkvdec2_regs_common {
> > +	struct rkvdec2_in_out {
> > +		u32 in_endian		: 1;
> > +		u32 in_swap32_e		: 1;
> > +		u32 in_swap64_e		: 1;
> > +		u32 str_endian		: 1;
> > +		u32 str_swap32_e	: 1;
> > +		u32 str_swap64_e	: 1;
> > +		u32 out_endian		: 1;
> > +		u32 out_swap32_e	: 1;
> > +		u32 out_cbcr_swap	: 1;
> > +		u32 out_swap64_e	: 1;
> > +		u32 reserved		: 22;
> > +	} reg008;
> > +
> > +	struct rkvdec2_dec_mode {
> > +		u32 dec_mode	: 10;
> > +		u32 reserved	: 22;
> > +	} reg009;
> > +
> > +	struct rkvdec2_dec_e {
> > +		u32 dec_e	: 1;
> > +		u32 reserved	: 31;
> > +	} reg010;
> > +
> > +	struct rkvdec2_important_en {
> > +		u32 reserved			: 1;
> > +		u32 dec_clkgate_e		: 1;
> > +		u32 dec_e_strmd_clkgate_dis	: 1;
> > +		u32 reserved0			: 1;
> > +
> > +		u32 dec_irq_dis			: 1;
> > +		u32 dec_timeout_e		: 1;
> > +		u32 buf_empty_en		: 1;
> > +		u32 reserved1			: 3;
> > +
> > +		u32 dec_e_rewrite_valid		: 1;
> > +		u32 reserved2			: 9;
> > +		u32 softrst_en_p		: 1;
> > +		u32 force_softreset_valid	: 1;
> > +		u32 reserved3			: 2;
> > +		u32 pix_range_detection_e	: 1;
> > +		u32 reserved4			: 7;
> > +	} reg011;
> > +
> > +	struct rkvdec2_sencodary_en {
> > +		u32 wr_ddr_align_en		: 1;
> > +		u32 colmv_compress_en		: 1;
> > +		u32 fbc_e			: 1;
> > +		u32 reserved0			: 1;
> > +
> > +		u32 buspr_slot_disable		: 1;
> > +		u32 error_info_en		: 1;
> > +		u32 info_collect_en		: 1;
> > +		u32 wait_reset_en		: 1;
> > +
> > +		u32 scanlist_addr_valid_en	: 1;
> > +		u32 scale_down_en		: 1;
> > +		u32 error_cfg_wr_disable	: 1;
> > +		u32 reserved1			: 21;
> > +	} reg012;
> > +
> > +	struct rkvdec2_en_mode_set {
> > +		u32 timeout_mode		: 1;
> > +		u32 req_timeout_rst_sel		: 1;
> > +		u32 reserved0			: 1;
> > +		u32 dec_commonirq_mode		: 1;
> > +		u32 reserved1			: 2;
> > +		u32 stmerror_waitdecfifo_empty	: 1;
> > +		u32 reserved2			: 2;
> > +		u32 h26x_streamd_error_mode	: 1;
> > +		u32 reserved3			: 2;
> > +		u32 allow_not_wr_unref_bframe	: 1;
> > +		u32 fbc_output_wr_disable	: 1;
> > +		u32 reserved4			: 1;
> > +		u32 colmv_error_mode		: 1;
> > +
> > +		u32 reserved5			: 2;
> > +		u32 h26x_error_mode		: 1;
> > +		u32 reserved6			: 2;
> > +		u32 ycacherd_prior		: 1;
> > +		u32 reserved7			: 2;
> > +		u32 cur_pic_is_idr		: 1;
> > +		u32 reserved8			: 1;
> > +		u32 right_auto_rst_disable	: 1;
> > +		u32 frame_end_err_rst_flag	: 1;
> > +		u32 rd_prior_mode		: 1;
> > +		u32 rd_ctrl_prior_mode		: 1;
> > +		u32 reserved9			: 1;
> > +		u32 filter_outbuf_mode		: 1;
> > +	} reg013;
> > +
> > +	struct rkvdec2_fbc_param_set {
> > +		u32 fbc_force_uncompress	: 1;
> > +
> > +		u32 reserved0			: 2;
> > +		u32 allow_16x8_cp_flag		: 1;
> > +		u32 reserved1			: 2;
> > +
> > +		u32 fbc_h264_exten_4or8_flag	: 1;
> > +		u32 reserved2			: 25;
> > +	} reg014;
> > +
> > +	struct rkvdec2_stream_param_set {
> > +		u32 rlc_mode_direct_write	: 1;
> > +		u32 rlc_mode			: 1;
> > +		u32 reserved0			: 3;
> > +
> > +		u32 strm_start_bit		: 7;
> > +		u32 reserved1			: 20;
> > +	} reg015;
> > +
> > +	u32  reg016_str_len;
> > +
> > +	struct rkvdec2_slice_number {
> > +		u32 slice_num	: 25;
> > +		u32 reserved	: 7;
> > +	} reg017;
> > +
> > +	struct rkvdec2_y_hor_stride {
> > +		u32 y_hor_virstride	: 16;
> > +		u32 reserved		: 16;
> > +	} reg018;
> > +
> > +	struct rkvdec2_uv_hor_stride {
> > +		u32 uv_hor_virstride	: 16;
> > +		u32 reserved		: 16;
> > +	} reg019;
> > +
> > +	union {
> > +		struct rkvdec2_y_stride {
> > +			u32 y_virstride		: 28;
> > +			u32 reserved		: 4;
> > +		} reg020_y_virstride;
> > +
> > +		struct rkvdec2_fbc_payload_offset {
> > +			u32 reserved		: 4;
> > +			u32 payload_st_offset	: 28;
> > +		} reg020_fbc_payload_off;
> > +	};
> > +
> > +	struct rkvdec2_error_ctrl_set {
> > +		u32 inter_error_prc_mode		: 1;
> > +		u32 error_intra_mode			: 1;
> > +		u32 error_deb_en			: 1;
> > +		u32 picidx_replace			: 5;
> > +		u32 error_spread_e			: 1;
> > +		u32 reserved0				
: 3;
> > +		u32 error_inter_pred_cross_slice	: 1;
> > +		u32 reserved1				
: 11;
> > +		u32 roi_error_ctu_cal_en		: 1;
> > +		u32 reserved2				
: 7;
> > +	} reg021;
> > +
> > +	struct rkvdec2_err_roi_ctu_offset_start {
> > +		u32 roi_x_ctu_offset_st	: 12;
> > +		u32 reserved0		: 4;
> > +		u32 roi_y_ctu_offset_st	: 12;
> > +		u32 reserved1		: 4;
> > +	} reg022;
> > +
> > +	struct rkvdec2_err_roi_ctu_offset_end {
> > +		u32 roi_x_ctu_offset_end	: 12;
> > +		u32 reserved0			: 4;
> > +		u32 roi_y_ctu_offset_end	: 12;
> > +		u32 reserved1			: 4;
> > +	} reg023;
> > +
> > +	struct rkvdec2_cabac_error_en_lowbits {
> > +		u32 cabac_err_en_lowbits	: 32;
> > +	} reg024;
> > +
> > +	struct rkvdec2_cabac_error_en_highbits {
> > +		u32 cabac_err_en_highbits	: 30;
> > +		u32 reserved			: 2;
> > +	} reg025;
> > +
> > +	struct rkvdec2_block_gating_en {
> > +		u32 swreg_block_gating_e	: 20;
> > +		u32 reserved			: 11;
> > +		u32 reg_cfg_gating_en		: 1;
> > +	} reg026;
> > +
> > +	/* NOTE: reg027 ~ reg032 are added in vdpu38x at rk3588 */
> > +	struct SW027_CORE_SAFE_PIXELS {
> > +		// colmv and recon report coord x safe pixels
> > +		u32 core_safe_x_pixels	: 16;
> > +		// colmv and recon report coord y safe pixels
> > +		u32 core_safe_y_pixels	: 16;
> > +	} reg027;
> > +
> > +	struct rkvdec2_multiply_core_ctrl {
> > +		u32 swreg_vp9_wr_prob_idx	: 3;
> > +		u32 reserved0			: 1;
> > +		u32 swreg_vp9_rd_prob_idx	: 3;
> > +		u32 reserved1			: 1;
> > +
> > +		u32 swreg_ref_req_advance_flag	: 1;
> > +		u32 sw_colmv_req_advance_flag	: 1;
> > +		u32 sw_poc_only_highbit_flag	: 1;
> > +		u32 sw_poc_arb_flag		: 1;
> > +
> > +		u32 reserved2			: 4;
> > +		u32 sw_film_idx			: 10;
> > +		u32 reserved3			: 2;
> > +		u32 sw_pu_req_mismatch_dis	: 1;
> > +		u32 sw_colmv_req_mismatch_dis	: 1;
> > +		u32 reserved4			: 2;
> > +	} reg028;
> > +
> > +	struct SW029_SCALE_DOWN_CTRL {
> > +		u32 scale_down_hor_ratio	: 2;
> > +		u32 reserved0			: 6;
> > +		u32 scale_down_vrz_ratio	: 2;
> > +		u32 reserved1			: 22;
> > +	} reg029;
> > +
> > +	struct SW032_Y_SCALE_DOWN_TILE8x8_HOR_STRIDE {
> > +		u32 y_scale_down_hor_stride	: 20;
> > +		u32 reserved0			: 12;
> > +	} reg030;
> > +
> > +	struct SW031_UV_SCALE_DOWN_TILE8x8_HOR_STRIDE {
> > +		u32 uv_scale_down_hor_stride	: 20;
> > +		u32 reserved0			: 12;
> > +	} reg031;
> > +
> > +	u32  reg032_timeout_threshold;
> > +} __packed;
> > +
> > +/* base: OFFSET_COMMON_ADDR_REGS */
> > +struct rkvdec2_regs_common_addr {
> > +	u32 reg128_rlc_base;
> > +	u32 reg129_rlcwrite_base;
> > +	u32 reg130_decout_base;
> > +	u32 reg131_colmv_cur_base;
> > +	u32 reg132_error_ref_base;
> > +	u32 reg133_142_rcb_base[10];
> > +} __packed;
> > +
> > +/* base: OFFSET_CODEC_PARAMS_REGS */
> > +struct rkvdec2_regs_h264_params {
> > +	struct rkvdec2_h26x_set {
> > +		u32 h26x_frame_orslice		: 1;
> > +		u32 h26x_rps_mode		: 1;
> > +		u32 h26x_stream_mode		: 1;
> > +		u32 h26x_stream_lastpacket	: 1;
> > +		u32 h264_firstslice_flag	: 1;
> > +		u32 reserved			: 27;
> > +	} reg64;
> 
> Please be consistent in naming the regs, some have leading zero prefix
> others do not. E.g. reg031 above and reg64 here.

Right, I'll fix that.

> > +
> > +	u32  cur_top_poc;
> > +	u32  cur_bot_poc;
> > +	u32  reg67_98_ref_poc[32];
> > +
> > +	/* Regs 99 - 102 */
> > +	struct rkvdec2_h264_info {
> > +		struct rkvdec2_h264_ref_info {
> > +			u32 ref_field		: 1;
> > +			u32 ref_topfield_used	: 1;
> > +			u32 ref_botfield_used	: 1;
> > +			u32 ref_colmv_use_flag	: 1;
> > +			u32 ref_reserved	: 4;
> > +		} __packed ref_info[4];
> > +	} __packed reg99_102_ref_info[4];
> > +
> > +	u32  reserved_103_111[9];
> > +
> > +	struct rkvdec2_error_ref_info {
> > +		u32 avs2_ref_error_field	: 1;
> > +		u32 avs2_ref_error_topfield	: 1;
> > +		u32 ref_error_topfield_used	: 1;
> > +		u32 ref_error_botfield_used	: 1;
> > +		u32 reserved			: 28;
> > +	} reg112;
> > +} __packed;
> > +
> 
> [snip]
> 
> > diff --git a/drivers/staging/media/rkvdec2/rkvdec2.c
> > b/drivers/staging/media/rkvdec2/rkvdec2.c new file mode 100644
> > index 000000000000..db37fdbfc366
> > --- /dev/null
> > +++ b/drivers/staging/media/rkvdec2/rkvdec2.c
> > @@ -0,0 +1,1160 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Rockchip Video Decoder 2 driver
> > + *
> > + * Copyright (C) 2024 Collabora, Ltd.
> > + *  Detlev Casanova <detlev.casanova@collabora.com>
> > + *
> > + * Based on rkvdec driver by Boris Brezillon
> > <boris.brezillon@collabora.com> + */
> > +
> > +#include <linux/clk.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/pm.h>
> > +#include <linux/pm_runtime.h>
> > +#include <linux/slab.h>
> > +#include <linux/videodev2.h>
> > +#include <linux/workqueue.h>
> > +#include <media/v4l2-event.h>
> > +#include <media/v4l2-mem2mem.h>
> > +#include <media/videobuf2-core.h>
> > +#include <media/videobuf2-vmalloc.h>
> > +
> > +#include "rkvdec2.h"
> > +
> > +static int rkvdec2_try_ctrl(struct v4l2_ctrl *ctrl)
> > +{
> > +	struct rkvdec2_ctx *ctx = container_of(ctrl->handler, struct
> > rkvdec2_ctx, ctrl_hdl); +	const struct rkvdec2_coded_fmt_desc 
*desc =
> > ctx->coded_fmt_desc; +
> > +	if (desc->ops->try_ctrl)
> > +		return desc->ops->try_ctrl(ctx, ctrl);
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct v4l2_ctrl_ops rkvdec2_ctrl_ops = {
> > +	.try_ctrl = rkvdec2_try_ctrl,
> > +};
> > +
> > +static const struct rkvdec2_ctrl_desc rkvdec2_h264_ctrl_descs[] = {
> > +	{
> > +		.cfg.id = V4L2_CID_STATELESS_H264_DECODE_PARAMS,
> > +	},
> > +	{
> > +		.cfg.id = V4L2_CID_STATELESS_H264_SPS,
> > +		.cfg.ops = &rkvdec2_ctrl_ops,
> > +	},
> > +	{
> > +		.cfg.id = V4L2_CID_STATELESS_H264_PPS,
> > +	},
> > +	{
> > +		.cfg.id = V4L2_CID_STATELESS_H264_SCALING_MATRIX,
> > +	},
> > +	{
> > +		.cfg.id = V4L2_CID_STATELESS_H264_DECODE_MODE,
> > +		.cfg.min = V4L2_STATELESS_H264_DECODE_MODE_FRAME_BASED,
> > +		.cfg.max = V4L2_STATELESS_H264_DECODE_MODE_FRAME_BASED,
> > +		.cfg.def = V4L2_STATELESS_H264_DECODE_MODE_FRAME_BASED,
> > +	},
> > +	{
> > +		.cfg.id = V4L2_CID_STATELESS_H264_START_CODE,
> > +		.cfg.min = V4L2_STATELESS_H264_START_CODE_ANNEX_B,
> > +		.cfg.def = V4L2_STATELESS_H264_START_CODE_ANNEX_B,
> > +		.cfg.max = V4L2_STATELESS_H264_START_CODE_ANNEX_B,
> > +	},
> > +	{
> > +		.cfg.id = V4L2_CID_MPEG_VIDEO_H264_PROFILE,
> > +		.cfg.min = V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE,
> > +		.cfg.max = V4L2_MPEG_VIDEO_H264_PROFILE_HIGH_10,
> 
> In an earlier comment there was mention that high 10 was not yet
> implemented?

Indeed, this need more testing. I'll either make it work or remove High 10 
support from here.

> > +		.cfg.menu_skip_mask =
> > +			BIT(V4L2_MPEG_VIDEO_H264_PROFILE_EXTENDED),
> > +		.cfg.def = V4L2_MPEG_VIDEO_H264_PROFILE_MAIN,
> > +	},
> > +	{
> > +		.cfg.id = V4L2_CID_MPEG_VIDEO_H264_LEVEL,
> > +		.cfg.min = V4L2_MPEG_VIDEO_H264_LEVEL_1_0,
> > +		.cfg.max = V4L2_MPEG_VIDEO_H264_LEVEL_6_0,
> > +	},
> > +};
> > +
> 
> [snip]
> 
> > +
> > +static int rkvdec2_queue_init(void *priv,
> > +			      struct vb2_queue *src_vq,
> > +			     struct vb2_queue *dst_vq)
> > +{
> > +	struct rkvdec2_ctx *ctx = priv;
> > +	struct rkvdec2_dev *rkvdec = ctx->dev;
> > +	int ret;
> > +
> > +	src_vq->type = V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE;
> > +	src_vq->io_modes = VB2_MMAP | VB2_DMABUF;
> > +	src_vq->drv_priv = ctx;
> > +	src_vq->ops = &rkvdec2_queue_ops;
> > +	src_vq->mem_ops = &vb2_dma_contig_memops;
> > +
> > +	/*
> > +	 * Driver does mostly sequential access, so sacrifice TLB efficiency
> > +	 * for faster allocation. Also, no CPU access on the source queue,
> > +	 * so no kernel mapping needed.
> > +	 */
> > +	src_vq->dma_attrs = DMA_ATTR_ALLOC_SINGLE_PAGES |
> 
> Do we really need to use ALLOC_SINGLE_PAGES flag, e.g. use 4K pages?
> 
> Was probably only needed for 32-bit to work with the arm mmu instead
> of the rk iommu present on all newer socs.
> 
> Also, allocating chunks of 4 MiB should help reduce resources
> required for export/import of video buffers to display pipeline.

Probably not needed indeed. 

> > +			    DMA_ATTR_NO_KERNEL_MAPPING;
> > +	src_vq->buf_struct_size = sizeof(struct v4l2_m2m_buffer);
> > +	src_vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
> > +	src_vq->lock = &rkvdec->vdev_lock;
> > +	src_vq->dev = rkvdec->v4l2_dev.dev;
> > +	src_vq->supports_requests = true;
> > +	src_vq->requires_requests = true;
> > +
> > +	ret = vb2_queue_init(src_vq);
> > +	if (ret)
> > +		return ret;
> > +
> > +	dst_vq->bidirectional = true;
> > +	dst_vq->mem_ops = &vb2_dma_contig_memops;
> > +	dst_vq->dma_attrs = DMA_ATTR_ALLOC_SINGLE_PAGES |
> 
> Same here.
> 
> > +			    DMA_ATTR_NO_KERNEL_MAPPING;
> > +	dst_vq->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
> > +	dst_vq->io_modes = VB2_MMAP | VB2_DMABUF;
> > +	dst_vq->drv_priv = ctx;
> > +	dst_vq->ops = &rkvdec2_queue_ops;
> > +	dst_vq->buf_struct_size = sizeof(struct rkvdec2_decoded_buffer);
> > +	dst_vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
> > +	dst_vq->lock = &rkvdec->vdev_lock;
> > +	dst_vq->dev = rkvdec->v4l2_dev.dev;
> > +
> > +	return vb2_queue_init(dst_vq);
> > +}
> > +
> > +static int rkvdec2_add_ctrls(struct rkvdec2_ctx *ctx,
> > +			     const struct rkvdec2_ctrls *ctrls)
> > +{
> > +	unsigned int i;
> > +
> > +	for (i = 0; i < ctrls->num_ctrls; i++) {
> > +		const struct v4l2_ctrl_config *cfg = &ctrls-
>ctrls[i].cfg;
> > +
> > +		v4l2_ctrl_new_custom(&ctx->ctrl_hdl, cfg, ctx);
> > +		if (ctx->ctrl_hdl.error)
> > +			return ctx->ctrl_hdl.error;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> 
> [snip]
> 
> > +
> > +static int rkvdec2_probe(struct platform_device *pdev)
> > +{
> > +	struct rkvdec2_dev *rkvdec;
> > +	unsigned int i;
> > +	int ret, irq;
> > +
> > +	rkvdec = devm_kzalloc(&pdev->dev, sizeof(*rkvdec), GFP_KERNEL);
> > +	if (!rkvdec)
> > +		return -ENOMEM;
> > +
> > +	platform_set_drvdata(pdev, rkvdec);
> > +	rkvdec->dev = &pdev->dev;
> > +
> > +	mutex_init(&rkvdec->vdev_lock);
> > +	INIT_DELAYED_WORK(&rkvdec->watchdog_work, rkvdec2_watchdog_func);
> > +
> > +	rkvdec->clocks = devm_kcalloc(&pdev->dev, 
ARRAY_SIZE(rkvdec2_clk_names),
> > +				      sizeof(*rkvdec->clocks), 
GFP_KERNEL);
> > +	if (!rkvdec->clocks)
> > +		return -ENOMEM;
> > +
> > +	for (i = 0; i < ARRAY_SIZE(rkvdec2_clk_names); i++)
> > +		rkvdec->clocks[i].id = rkvdec2_clk_names[i];
> > +
> > +	ret = devm_clk_bulk_get(&pdev->dev, ARRAY_SIZE(rkvdec2_clk_names),
> > +				rkvdec->clocks);
> > +	if (ret)
> > +		return ret;
> > +
> > +	rkvdec->regs = devm_platform_ioremap_resource(pdev, 0);
> > +	if (IS_ERR(rkvdec->regs))
> > +		return PTR_ERR(rkvdec->regs);
> > +
> > +	ret = dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(32));
> 
> I am expecting that this should be albe to work with 40 bits together
> with the iommu. I know too little about dma subsystem to know if this
> mask refers to the iova or the physical memory that can be used.
> 
> With the iommu in use we should be able to use buffers in 40-bit
> addressable physical memory.

Right but we don't use the rk iommu yet. I don't think we can go higher than 
32 bits memory without it, but I can check.

> > +	if (ret) {
> > +		dev_err(&pdev->dev, "Could not set DMA coherent mask.
\n");
> > +		return ret;
> > +	}
> > +
> > +	vb2_dma_contig_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));
> > +
> > +	irq = platform_get_irq(pdev, 0);
> > +	if (irq <= 0)
> > +		return -ENXIO;
> > +
> > +	ret = devm_request_threaded_irq(&pdev->dev, irq, NULL,
> > +					rkvdec2_irq_handler, 
IRQF_ONESHOT,
> > +					dev_name(&pdev->dev), 
rkvdec);
> > +	if (ret) {
> > +		dev_err(&pdev->dev, "Could not request vdec2 IRQ\n");
> > +		return ret;
> > +	}
> > +
> > +	pm_runtime_set_autosuspend_delay(&pdev->dev, 100);
> > +	pm_runtime_use_autosuspend(&pdev->dev);
> > +	pm_runtime_enable(&pdev->dev);
> > +
> > +	ret = clk_bulk_prepare_enable(ARRAY_SIZE(rkvdec2_clk_names),
> > rkvdec->clocks); +	if (ret) {
> > +		dev_err(&pdev->dev, "Could not start clocks\n");
> > +		return ret;
> > +	}
> > +
> > +	ret = rkvdec2_v4l2_init(rkvdec);
> > +	if (ret)
> > +		goto err_disable_runtime_pm;
> > +
> > +	return 0;
> > +
> > +err_disable_runtime_pm:
> > +	pm_runtime_dont_use_autosuspend(&pdev->dev);
> > +	pm_runtime_disable(&pdev->dev);
> > +	return ret;
> > +}
> > +
> 
> [snip]


--nextPart5623076.44csPzL39Z
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEonF9IvGrXNkDg+CX5EFKUk4x7bYFAmZwQHYACgkQ5EFKUk4x
7bYQIQgAsnx6fLU5PbZIdHKuY06JQI19p0+NViK4owx/phyOXVfGmrIKuBTY0NtV
9Z+Fp5cqmCki1ZT+oBUzfu6nL1sTaYZuR91FumZ5EdpVkW/UaUAP9v1jnTa4NFfy
FiVWL9R8ofgLBT6AfcAnrW8ZgcLDZ+vZMHRJzmF/c+dHL6G4O9Zmr+82zOhVaCp8
tjatWNS3Pg0OgLjxIL9WjrOcJ8UwwYcqiemA0U2FEGhz7AclicGJ4SRkXOFKiH2r
cmq/ceWSckivfkHfvJZ1QSLjUHNyQIjVnmaMYqzB563YMwRQ+FlXjGWjEUFGXKbs
Y5a62SUOcvoAVAUi1bMA+pXZqvIX3w==
=Hpxk
-----END PGP SIGNATURE-----

--nextPart5623076.44csPzL39Z--




