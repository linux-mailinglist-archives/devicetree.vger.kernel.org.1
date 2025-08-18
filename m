Return-Path: <devicetree+bounces-205750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2776EB29F32
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 12:34:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB82B17AA16
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 10:33:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC4D7258EF7;
	Mon, 18 Aug 2025 10:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OdMFnioy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246E92C2372
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 10:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755513232; cv=none; b=fnlDWVC0NJeau3Jxnwm+yoS5OEp3x99WHqXSCe73hxhRffv0NwlovnUm/7Og24VAL4cXV49yEwQHgN91oeZDoeOZgU5+/RnmpnXY51lsoRs5+PxbeaejRPa+0qwaf4DuP3KnS5M+vKsgMSKeiL5jZ647yrH+MOlPRrWCyhpMy08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755513232; c=relaxed/simple;
	bh=kp5VnNcbs+9/ErL8zE8XvSZqvp7my5Lsakn8f4ZZTOo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jqpDVCmBQYWSyN+VRYtmm5H/vhd6Yi/SRl1f8Izb+lcWYeppL0CdS54H9yw4hfUF633tp0LNq8QHAAF+n7mzDP/xN7XkQ0p64zgz3wi+KCNL3QvN5jfgpZDMSWcO2LcdT4wSwLOD1vLlu/3uPugyg4SiBRmScyTKeUTp7Ced1Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OdMFnioy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57I8OHcv018175
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 10:33:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=A7ynXFPAdDr93bbf3NbCgD8j
	ygp0goJYJwT/DBfR7E0=; b=OdMFnioyG0X1y6dW2Lq6fKB/IyxOCBIiQ9TQ8iTJ
	KLoSIDasmi+ltdOJ/C9MTSKl7e5M7zSEXhwwcMlFxUxMEGx4dUkwmSvJea/U7467
	VgGJMod+C9m8cnxmmiigaSCYORPDMDpWxUtSezUXfOKqNmuidxMLeMf6xTUAwode
	gwLcyBuy6JOk+V4qod2x2Ri6Z11gDCsR36TJ3oel1nNQOIVA/lpdcLFU/Y40w3Sz
	gJ5KQq/4XRVdabpnis8ePfZCai9vShmehQ5eh6XDCT0VyNZ6b2JstJOYV+6SSeI2
	hE8AfUUzEh3+jjfFhsxr8QTItYxlkR5UfQCs9Us7gEISZQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jj744a9y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 10:33:50 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b109bc5ecaso115590791cf.2
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 03:33:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755513227; x=1756118027;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A7ynXFPAdDr93bbf3NbCgD8jygp0goJYJwT/DBfR7E0=;
        b=OFeyFYCJB3lS+0dtOU/ly0kgFRkZwPYtgxpSGsqEjPKDFNczHAcHQrz/T7zjw/s4IW
         F5yk2xcHN9bRRh2FqcQYHe+y6bjX+MpVqVT+4bMmKeorp+F3VSdH5pFzwud0JWsxLLwt
         Xrr++OnqbZgZzS9tyVEwM0dnFDZQysEKr7Ta5J7JwJKFH9PJJEQBRhY8q7ikSJdUlkDX
         ediaF27Z18SVM7Jtv4U7J3VjF4zL4CArkJNCL2yGfFjwrqd5ADNfHwNDGNU4hvTytZ0W
         AV6qHfS693AlCZhVwqfHewfnYWeE2bNaWo4pQRlxZ7vXaf8QYRwxsRCa6OT0bDSWsbcI
         mx/A==
X-Forwarded-Encrypted: i=1; AJvYcCVerU14EkrbUJiCQNolgHUUxZbc5TXCXaXkAlkRdBrEqqUm56qhXL5lJwCmMZ/e/BA0CL3AuhA/c0cw@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2FdPjsq5ObY+UBWgLnzoyypo4iGJ8mfNNjKH45ZUlxFg3PUL6
	xuujtn+eh1vFsPVtsZr4kPGOHGa3cDMIpvI9PYz29kHEFn7THqqH80HH56Ta0m+eLu1kTxuhyPn
	EXtpmagNwXETPgS1LrI2JIC+3giAoL3+9HWihG5uG6Z36JhNcCHsQgX/loDxw7D8l
X-Gm-Gg: ASbGncuwMfDjz8q9ssV4UXyfdHvOLqSOS50a9FkYVdZjtkHe35DK6G7/PI7uvC1XrA1
	rhDsmVXXk2KafvbTBwx5y2Cmy9kHDuQ6zORaGcVhJ1MdStsdC9kKp0M/h61z5Hy/A4qiler0Zio
	M814wQ/g/sOOqGJAT0vrzDacO0Z6zXsUazCS2RwA6mp2RWUv15auzxxdMLYrBoeUOVR1L3B4p2H
	CYzRXhxZqfrAe3LYrfqdZegpPthrwcqWpRNHmhS9ecapAqi8oitLDP9gpOHE4hAWmP2pveUP+c4
	351WOHw9X2uVi8AuHjvVxduDfWUeUT34U6kMIwenu7++6km+F6XsZbwnn3fyamhxwlRbEl50OS2
	9KpZ4QZLqLob8gzO/KAbcwOtK2ogk/fZpzYR6qQW5Uod4Z61OLdQQ
X-Received: by 2002:a05:622a:24e:b0:4ab:9586:386b with SMTP id d75a77b69052e-4b11e27d4f3mr156691961cf.53.1755513226726;
        Mon, 18 Aug 2025 03:33:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFmsjNW1ZeHTRfqJuRiDYJxZ1Opx0gN6XfkaTOXUZxgte6+tNjsiZmaOhN2niJbZ9NaHk0qng==
X-Received: by 2002:a05:622a:24e:b0:4ab:9586:386b with SMTP id d75a77b69052e-4b11e27d4f3mr156691421cf.53.1755513226026;
        Mon, 18 Aug 2025 03:33:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef369843sm1592070e87.60.2025.08.18.03.33.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 03:33:45 -0700 (PDT)
Date: Mon, 18 Aug 2025 13:33:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        Abel Vesa <abel.vesa@linaro.org>, Xilin Wu <wuxilin123@gmail.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Srinivas Kandagatla <srini@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>,
        Christopher Obbard <christopher.obbard@linaro.org>
Subject: Re: [PATCH 1/9] arm64: dts: qcom: x1-asus-zenbook-a14: Add missing
 pinctrl for eDP HPD
Message-ID: <ubagrwewqqyvdgjmibhqp57x7ttqukqtv6ziftwsayuomlght6@j2k7i63rldsd>
References: <20250814-x1e80100-add-edp-hpd-v1-0-a52804db53f6@linaro.org>
 <20250814-x1e80100-add-edp-hpd-v1-1-a52804db53f6@linaro.org>
 <pmhy2ogyorelllgandehtzlen64tzegp5pc6fkg7al7xzjcb2h@lq4lpaaavr6j>
 <aKLZ5M12Q-qTuB4n@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aKLZ5M12Q-qTuB4n@linaro.org>
X-Proofpoint-GUID: c4y0rD-Vz0LPmMxH61cAUSSp2nYlaQAT
X-Proofpoint-ORIG-GUID: c4y0rD-Vz0LPmMxH61cAUSSp2nYlaQAT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAzMyBTYWx0ZWRfX/RqozHk+no2D
 zXCcT7q/eg5FnS2OkRw2/rb1ceGSPbukjjZHGnUXlhtNIcrqy0LYZ/IuDb5WvBnkkvWIBE0GZl+
 woCgulj4PKH1QwEoClBIFCHxkA9TlJphqhf7fHcJ+DLaMJ5DR60xOI7xgmvYuMRPX8B6YOfm6E4
 Q1kqEg1pKHHa8KtBtHyermPFfp3lFhv1zZyPIag2NL+9VrzaVDFKifmFfYCjbDeu19X3bQbXS4j
 nfNETD3VNK9UCT/42MWkC9VHQrvtyu39QNFxZetVznFv8BSp0tbyxP3ujjvp/Ybgh3VdqZp1w3/
 Vjew54Tv3M+xxjlVG9om5QMIWNzLnQkR+syjJM9ZOeMQVKvwir97cUL+TBMGtd3ndge1KOKoruQ
 ChRsQhnW
X-Authority-Analysis: v=2.4 cv=MJtgmNZl c=1 sm=1 tr=0 ts=68a3018e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=thYETgxLN2gimk122HMA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-18_04,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 suspectscore=0
 phishscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160033

On Mon, Aug 18, 2025 at 09:44:36AM +0200, Stephan Gerhold wrote:
> On Sat, Aug 16, 2025 at 01:06:50AM +0300, Dmitry Baryshkov wrote:
> > On Thu, Aug 14, 2025 at 03:30:28PM +0200, Stephan Gerhold wrote:
> > > At the moment, we indirectly rely on the boot firmware to set up the
> > > pinctrl for the eDP HPD line coming from the internal display. If the boot
> > > firmware does not configure the display (e.g. because a different display
> > > is selected for output in the UEFI settings), then the display fails to
> > > come up and there are several errors in the kernel log:
> > > 
> > >  [drm:dpu_encoder_phys_vid_wait_for_commit_done:544] [dpu error]vblank timeout: 80020041
> > >  [drm:dpu_kms_wait_for_commit_done:524] [dpu error]wait for commit done returned -110
> > >  [drm:dpu_encoder_frame_done_timeout:2715] [dpu error]enc40 frame done timeout
> > >  ...
> > > 
> > > Fix this by adding the missing pinctrl for gpio119 (func1/edp0_hot and
> > > bias-disable according to the ACPI DSDT).
> > > 
> > > Fixes: 6516961352a1 ("arm64: dts: qcom: Add support for X1-based Asus Zenbook A14")
> > > Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> > > ---
> > >  arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi | 9 +++++++++
> > >  1 file changed, 9 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi b/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
> > > index 16d045cf64c08c02c420787e000f4f45cfc2c6ff..613c675aac296f931293a1ba3d8506c6663bad21 100644
> > > --- a/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
> > > @@ -1001,6 +1001,9 @@ &mdss_dp1_out {
> > >  &mdss_dp3 {
> > >  	/delete-property/ #sound-dai-cells;
> > >  
> > > +	pinctrl-0 = <&edp_hpd_default>;
> > > +	pinctrl-names = "default";
> > > +
> > >  	status = "okay";
> > >  
> > >  	aux-bus {
> > > @@ -1236,6 +1239,12 @@ cam_indicator_en: cam-indicator-en-state {
> > >  		bias-disable;
> > >  	};
> > >  
> > > +	edp_hpd_default: edp-hpd-default-state {
> > > +		pins = "gpio119";
> > > +		function = "edp0_hot";
> > > +		bias-disable;
> > > +	};
> > 
> > I think this is common enough. Let's maybe push this into the SoC dtsi
> > instead of copying it to all devices?
> > 
> 
> I had it there before, but Johan commented on the patch set from Chris
> that he would prefer to keep the potentially board-specific pinctrl out
> of the SoC dtsi [1]. So I can either address his feedback or yours. :-)
> 
> There isn't really a convention for X1E either - we have a wild mix
> where some pinctrl is defined in the SoC dtsi (UART, I2C, SDHCI, ...)
> and others is copied for each board (e.g. PCIe).

PCIe pinctrl is a part of SoC DTSI for SM8[4567]0.

> The reason I chose this approach is that I didn't feel it is guaranteed
> that the HPD pin has external pull down. It seems to be the case on most
> devices, but in theory a device could maybe rely on the internal pull
> down. Might be better to have it explicitly defined, the 5 additional
> lines are not that much at the end.

I don't think anybody will use internal pull-down for this, it would be
too risky in case the eDP cable is bad. I have checked several laptops,
they use external pull-down or two MOSFETs.

> I'm also fine with moving it. Perhaps Bjorn or Konrad could comment if
> they would prefer to have the pinctrl template defined in the SoC dtsi?

-- 
With best wishes
Dmitry

