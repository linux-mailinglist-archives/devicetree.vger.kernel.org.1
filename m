Return-Path: <devicetree+bounces-275599-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AAHlAGTAtGl9sgAAu9opvQ
	(envelope-from <devicetree+bounces-275599-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 02:56:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBC828B4F7
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 02:56:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B752830B0C31
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 01:56:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C7AF2D9ECD;
	Sat, 14 Mar 2026 01:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YR93oQ+W";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZqXszS/Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F425B1EB
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 01:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773453404; cv=none; b=lpdXAb5IHimODE4PvpqkoJsBscIrgNbY3tbTqCqoxS1cqC1cXeoF3z/lTKREotzvmPaEocm+WGXLzVsQAa7E3J+rSjDzEAJNDD7orFteIkslNT9PNMirAwIpieZFrk/cY3wfdo2GUoIMvdZ8CKrY4fC3YsYrLsO8fso4Wfifh7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773453404; c=relaxed/simple;
	bh=C6fc7nVYudpnotSMX5iSUyECLcXPAfUuB+y6WeyPZvM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FivrhvoIX1mzgGONrb+TKynnOax2XTUjKDrHWn/AVCdPSUBiEO5NEngGX1XGAkFk1VDIaADCq63ztmT72kkW9fWIpXAYKWnVyJMWfXu+oAol3DY31g+3jB4iTVIrF5tQovk52EUiol8TNIG6BTy/jzpdIyto80tjRdfLw4ma4h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YR93oQ+W; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZqXszS/Y; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DI6j861749485
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 01:56:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3rm7enm9nqUcIWJKNEewoyLg
	qNoJmjobC7Rx+fTbkBU=; b=YR93oQ+W1/suIy4ox4HKTqhU4NB8Jm7mpJvnfHrp
	NZlKLFcRsuDezsAiUwIOdHPG32XjeCaG/I9PwY3uQma1JdKc+5eLjYCTyjPqDnTc
	nMprcxKakt8RSlZFV5p0NhIKDFhEQFLvBnuC/2AWijSqlB5uuuUY1H7XJRyW/Neo
	iVJqlLtmU7ZmVgYZwzBqSULu91UqQyL4rtMPOxjxeLDqhdFhEuJ2gVq7YH/s1Xlv
	okwxnqmUl8gHR7qFtgeuDoEWar0+ktKm3X0LuF29noS2QQV9GQCDguhNjcOC7Jtd
	T2js4/TYddZWIbJZltE6fnQcluDM1dhVNubtT3FpxS7qUw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvgj6jpd6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 01:56:41 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd773dd39bso1986922485a.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 18:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773453400; x=1774058200; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3rm7enm9nqUcIWJKNEewoyLgqNoJmjobC7Rx+fTbkBU=;
        b=ZqXszS/YBWVOH+0YXGN5HgPJ5DeI7Z+5027X5s/FqAn5FNNIcvzz7Vh7sY+O/8Pj/i
         evvuwWdAd86endhkwsrHfjGMS4985dYySqZrzOYRUz48yVCSy2k4pdCerHrfgVUQLNPj
         u8V2Q9EEV7R3M5Fctm9VMskgoBKyvryKSaQSaZyu/zvnH2jTbU6fWbwA4YgiLAJDZOZi
         sG+8DFqrajcii8i8sGkJ9qtNK1xSDQ7zXClNiPX2+wX3wog2FlcQQCh5wuYaUWGoJXd3
         Bss+fcw2PXkgtL3TgIuFMUQF1Q1zPOPyIO08xY/gKiVm/pNemDECepNdOBKxMEYgqoBp
         q8iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773453400; x=1774058200;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3rm7enm9nqUcIWJKNEewoyLgqNoJmjobC7Rx+fTbkBU=;
        b=MJoRcqXmLhy4lWWSVCh9eVJLhblZjSepfc21FfJphcjatSluqeDyD7H9gnANoLrekY
         Fk3IWiSlrCdVuRO0ZelkiT5hiN8qoPndkro9ZKZk2MZq6XWJiUfTbSs1kyoscgmhANb1
         6JrbUHF+17J7BOheKDEq//XEit7Cx/IEeJkcH3sOQ/7z//UqUhlH3LkPssbF2+QR++WA
         hE2HCipIncja5KbCJB2CmjuoCVuD9Zk0LHDztWmJx4xwc89LspbB5YuUc1iTpDuUot6F
         xMHacRN5OP8hlFSk+CYIRNTzYVlvem2FlY2NmbU8YNcDS8xqVfmhaKFgaQFo6VS17Eho
         YbKA==
X-Forwarded-Encrypted: i=1; AJvYcCWkTkKyevUbdhXHpuOsp4U+EOnrTAgnXa8BmsGAeI3ognNQxNkwux4XHhSe7SEkaJsqVVWHRoKZeahk@vger.kernel.org
X-Gm-Message-State: AOJu0YxGOL29rZy20xSRzU/w58v1Dggna8EhfLUdBBuu7QS9eHwgHSdf
	vrNvuIV49tWgCwbK3Rq92JpKYZwcpXodWxxDgISGE1AONXaW5tSo5ynlLaEvliRbbuJSY7hzTAs
	4HxKgCQW54ReNI9BBaBAfPBJ266gPKNjQZcR4wOWPgLFTDm5/Dv35MWOVxYv6g7DK
X-Gm-Gg: ATEYQzwUdNn/2s/G0SQxlSLx/97jZlGj4mGvedvxhtROeZjrLdlFuvakj3SuEx1aDAS
	E2yy9nWRJn8UlGrU4TiUaTLgxzD/YRGGfYRjlN37/OOHwd3H6IGrg7ckiRY+NkkRK0CcQkoQQ9i
	k0UhYFdLTeS2llyTZ+kaapZMxiXzuVQET0LHv1+cSsaJS3dDXpZAiuEYv3vEuN7FzKK0EqU51yO
	H9IlczgkZeQhUsevzHSb+CJW4CqUsmVHc7UvolKX6vRIVSleFGwdkmgPn5rG8ybh27StRXP8Nnv
	G57BOUy6z9xJEOi04F7TxmvkmXAwdIUNWZPNuN+9jKA/IRjlCPwBW7E1Hp2zHsi06xWhXYsl9HV
	m+1ts1FGKfFAtGjCSlfLrK8ffpSburCYLSzYUXOnuADW4D8gRQQECTJsuJpV/zVerSGtg0ZAPD2
	ls15O/t8bT6yDdEgPOV+1bI2OEFkoupAUNULY=
X-Received: by 2002:a05:620a:2a11:b0:8cd:871c:909d with SMTP id af79cd13be357-8cdb5b5fc9emr763351785a.53.1773453400224;
        Fri, 13 Mar 2026 18:56:40 -0700 (PDT)
X-Received: by 2002:a05:620a:2a11:b0:8cd:871c:909d with SMTP id af79cd13be357-8cdb5b5fc9emr763349585a.53.1773453399752;
        Fri, 13 Mar 2026 18:56:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156162b08sm1819956e87.53.2026.03.13.18.56.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 18:56:37 -0700 (PDT)
Date: Sat, 14 Mar 2026 03:56:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pet Weng <pet.weng@ite.com.tw>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Hermes Wu <hermes.Wu@ite.com.tw>,
        Kenneth Hung <kenneth.Hung@ite.com.tw>,
        Jau-chih Tseng <jau-chih.tseng@ite.com.tw>,
        Pin-yen Lin <treapking@google.com>
Subject: Re: [PATCH v7 2/2] drm/bridge: Add ITE IT61620 MIPI DSI to HDMI
 bridge driver
Message-ID: <bif7vjwhaclrzbhmhq2u5a533w22fxex6tfgvcgy6sbms3dr2x@nrihumsnv2zc>
References: <20260313-it61620-0714-v7-0-36a16dc036d6@ite.com.tw>
 <20260313-it61620-0714-v7-2-36a16dc036d6@ite.com.tw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313-it61620-0714-v7-2-36a16dc036d6@ite.com.tw>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE0MDAxMyBTYWx0ZWRfX3GdHsdAtop+l
 O/zpeEZ8IxE7bT6kPewchNF/WY2ttU6PrkXhqwRJfTzxn+XmjNVaKy9cHpcwRdJzmqUlmXeFz2o
 SVTR6DIWUj8kXCpMvsAz1nn3NkH14baTOBasmw6+uqo6lVXtc7conkRQqEqOD2AAkSbXMrvMXB1
 p9GGyq4uGc7SZIyl9rphIsdmRXmNkC4RJrG3irt6uD4d3P8hS5sclexeKkJe/q/Uq0RoFRi7xpQ
 QS1SH5GHkSrU0NMDjatdx2U1z/voM5qug1Nfs8xhDq2wdV3QB5uKouxmij5HvMlv4OAdlHRLzVd
 Sra7SLhr3gzUB17aMdtplWoO+ktBSIn5t7Vicqw5WVC5MIflHLsml+cSml1nRl8NTtrx7uKMHhw
 Ly7I8+l+cXmuPVLg+xcsuPD4VDBt3PYbSStZL3PM+ZQyL4b+lBUq1YjJfqcuPwus7nvlpAjUg1W
 IvgVo3UGTSPBFfn9erw==
X-Proofpoint-GUID: bCiC8hfIWgXXj0PulkypmVfM_kUzUlrq
X-Proofpoint-ORIG-GUID: bCiC8hfIWgXXj0PulkypmVfM_kUzUlrq
X-Authority-Analysis: v=2.4 cv=H+vWAuYi c=1 sm=1 tr=0 ts=69b4c059 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=Ns9eNvu6AAAA:8
 a=EUspDBNiAAAA:8 a=D6ll9-fdZcolwGNgBd0A:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=LZLx1i01EnjtqRv10NxV:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_05,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 malwarescore=0
 adultscore=0 impostorscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603140013
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_FROM(0.00)[bounces-275599-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,lists.freedesktop.org,vger.kernel.org,ite.com.tw,google.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5CBC828B4F7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 02:48:16PM +0800, Pet Weng wrote:
> This adds support for the ITE IT61620 bridge chip which converts
> MIPI DSI input to HDMI output. The Driver implements the basic
> bridge functions and integrates with the DRM bridge and connector
> frameworks.
> 
> Supported features include:
> MIPI DSI input handling
> HDMI output setup
> Basic mode configuration
> I2C-based control and initialization
> HDCP 1.4 handling
> 
> HPD handling clarification:
> Although IT61620 has an HPD pin, hotplug detection is handled by the
> system connector. The bridge only receives HPD notifications, and the
> HPD pin is used solely for short pulses during HDCP authentication.
> Therefore, this bridge does not implement OP_HPD or OP_DETECT, as it
> does not originate or determine hotplug or connection status.
> 
> This driver will be used on platforms embedding the IT61620 for
> video output via HDMI from SoCs with MIPI DSI output.
> 
> Add a MAINTAINERS entry for the IT61620 bridge driver.
> 
> Signed-off-by: Pet Weng <pet.weng@ite.com.tw>
> ---
>  MAINTAINERS                          |    7 +
>  drivers/gpu/drm/bridge/Kconfig       |   18 +
>  drivers/gpu/drm/bridge/Makefile      |    1 +
>  drivers/gpu/drm/bridge/ite-it61620.c | 2590 ++++++++++++++++++++++++++++++++++
>  4 files changed, 2616 insertions(+)
> 
> +
> +static void it61620_bridge_hdmi_audio_shutdown(struct drm_bridge *bridge,
> +					       struct drm_connector *connector)
> +{
> +	struct it61620 *it61620 = bridge_to_it61620(bridge);

Here should be a call to
drm_atomic_helper_connector_hdmi_clear_audio_infoframe().
It can be fixed while applying.

> +
> +	it61620_disable_audio(it61620);
> +}
> +

Other than that, LGTM.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

