Return-Path: <devicetree+bounces-266577-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DN5N1e1lmkxkQIAu9opvQ
	(envelope-from <devicetree+bounces-266577-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 08:01:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FDC15C907
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 08:01:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B8E823017240
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 07:01:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ABA3332901;
	Thu, 19 Feb 2026 07:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V/IFu0ul";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Wzo/8x8t"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 755FB1E0B86
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 07:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771484500; cv=none; b=F7qKbQbzCFd7xcmmLa+EaU0zjSqTGc3pDv7Qmx0EOZxBKakgll5/xhDq01KrCSPyT+xeqzMnPvCUgSNT/beiQNz3uhEJMIXgRybWuYiX9MK9Ndfk1GdFMt9pKUKkRSkIYpTb2MDFrqYCaT1RWQ2USAmzKGC3U2B8zqaS9cpX+AE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771484500; c=relaxed/simple;
	bh=Roy+dUxDkK9IhvPFs2q7bN+N+GftZ4twZcWH0mWybvA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y6/jByuCoRqTbU1EeS0mvI4UJjAIh5ruw8gZjFpYGqsCshhYqgGFFE4IkxBd38f70E7S/fYScGV/TYqb/QOrFAiLROIcVayBooqwPTdqzgTn0V2O5AHQ0xqzQo2ABglW9i684RjMTMep1CnZfY8BnpEMMeWnmBvJAVCfQnxlkj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V/IFu0ul; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Wzo/8x8t; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61IK7bAC2773503
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:51:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lSDnkDf0KUOqNWkf9I7KbQ72
	TxHasUopsazL882oRd0=; b=V/IFu0ulX9FOU8qANFZeWm2w2rgzeB0Fs/2WJsk3
	3ZLKBAUBlN6F4xXuKx9401EkoujrrU5LYh8oNf2ipWW/OQfy4jFZt9shgKwr7oyc
	V3eONTAFNXATkp6TB0sHezt1GR9mKH0RHObFLeZadXNGjxND4TbBPwsfeP6J+kGe
	90weIQcuuWs8MSvdKnAhMibZyw/QO4EAlPnbYNGUlzg7q+5WfmnFPzB0x6S4GFYx
	MYZGAj+jD/AiWABgqAdBYYsnTfnv1vUt8O9jPVZE2skL/x6PYehLgFgGY0GvLsk+
	ZQ/y8CZLLgcbD8SyXwZtzGqajMwuOMA0mq2Kx3JROYVWeg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdc7uas2a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:51:42 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c71500f274so66525785a.1
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 22:51:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771483901; x=1772088701; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lSDnkDf0KUOqNWkf9I7KbQ72TxHasUopsazL882oRd0=;
        b=Wzo/8x8te7ncHEpggn5rLyCsur599vGInCE/vH1Qm7ZEur9f5sANkXtwE9CLbrjKUI
         GL4hsl7cEm35wU6k1nkMXnl2OVzpUBHmFgKruPPRoRJUJ0vR4Pzhi9MA2bP5X1ZBSHmF
         NgeWfOQJvNsVJsZ8Zs2rrFIuiEhlmO8Dtx4IVeefRa7jwzZUN6E+ziXUB0k0v00VBjas
         kgL+BYxg35j/0cS69YJbhPr15H16dASz1lxQcrJ+kzkFl2ZqV10UE+CxKBjg8H8np7mI
         ODhl9DsGGqP+D2CMMEJUDfrR4AsNLW2KdE6JRxKwkvwkPxW8AQJ3uyCEl+IOBYvcYqMU
         Nk6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771483901; x=1772088701;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lSDnkDf0KUOqNWkf9I7KbQ72TxHasUopsazL882oRd0=;
        b=h96MQWoQXQ4+6PzCrf7+4CznGgENoZtvYL85+YiQeKA4eFDzsWNEIIB/3EbOHzXvfy
         k80oP5IqdbPxFRBYEseXlI0VYWz60zvoe0OqT/+rt4tIaP/sjgeXwuCYHUKBAep//Epp
         BUARcYaI4+C71tIXbs1cvpviLps2ntyM5Gh2+Hkyf/uJdL4zLvZzsCPbhhnTdBxybjPa
         M0M6mW26858LOZT0HcqgO0UdUcz24arXDWhO+KhVXWpu1omp3Rw8jwUuOj3QpkhVq7k2
         8u+OcnrYViHCQ5+1LbSrN+eaYIPcye79joUMa5FS1ORH2qUYZRyPxYXLasc2LGuFOm9H
         h1Zw==
X-Forwarded-Encrypted: i=1; AJvYcCVtmTjEzGHbTASV5SubWD/xs+AB/yhGv5wGjGkOTNnkt8MFhf9xaNfHLHIGHLq7RfLlfaQ6Fkduuoqw@vger.kernel.org
X-Gm-Message-State: AOJu0Yww0lGA7v+fCE1mnJq45cVlLSE4vNxlQhMBoIi9G07u0UATx7fD
	N6lC3rAsrzqg9pMmgQ8SZvbnNxqBZSJSwTiU0ehBjX9aLzrASsc6Ax0/u0ga7UztyZVroglGQ4T
	XnnMV1A6atZnOASUj1JS2RJcXdmUTzAVU8nEof9+toXqs7co8xysH5jALCaQ+Wsq2
X-Gm-Gg: AZuq6aJGbPpTdxjfKSjswRS4iiq3LVkTv8LdtsvdjqK5r/YfH0WF1j6F0Wxk5lTOM6/
	3wd+EutlAf8zTRb10FnJD/vzNchfW1ubu1sNK4wpdwyQIzuaW1GCDjnaKVJKeHOaYuztvSvpSj/
	Mryv2rGHr/nyOaZpQA9q43hyEcwnkgOQTPEjYcN51qxp/FgjQQ8z/a8KpEJY+F36aVKNhF0cUGG
	KzE58CmujbrlX12lUWZVgYPXbXw22lUwgzKaMiW8QwG7FprSBru17dv/hEAzIy6sg+f57pqIyTS
	xmH+sZcuMuAEPHfwynzwbHQd0LVYgQoU58qKe6x2d8atP/WoVgbpPUgb/BuFzL/o2intv9LuiDu
	VVzu+J4VWkD+IKnFbB5jwJ2HCTg79XC+TpBCtK5VQaFyIIna3Hf74CPIpGRJsEOuK+NSYckwo+H
	M3ZYSN9AG1VI/uz5DXqfSjUGVYtu3MUWVWcFQ=
X-Received: by 2002:a05:620a:1a24:b0:8c7:f79:bd7b with SMTP id af79cd13be357-8cb7401cbb5mr426206485a.9.1771483901267;
        Wed, 18 Feb 2026 22:51:41 -0800 (PST)
X-Received: by 2002:a05:620a:1a24:b0:8c7:f79:bd7b with SMTP id af79cd13be357-8cb7401cbb5mr426205585a.9.1771483900768;
        Wed, 18 Feb 2026 22:51:40 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f5a4f8dsm5141998e87.49.2026.02.18.22.51.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 22:51:40 -0800 (PST)
Date: Thu, 19 Feb 2026 08:51:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/5] arm64: dts: qcom: msm8998: Drop redundant VSYNC pin
 state
Message-ID: <667woowm4dcbsmce6lds7jk3r4b2efs6kk5rkjtotkzsc6grzh@ps3uf6wrzq3w>
References: <20260218-qcom-dts-redundant-pins-v1-0-2799b8a4184e@oss.qualcomm.com>
 <20260218-qcom-dts-redundant-pins-v1-2-2799b8a4184e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260218-qcom-dts-redundant-pins-v1-2-2799b8a4184e@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: piOoi76Lk8jOftck9ggwGkPqfA-Ci1MA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDA2MSBTYWx0ZWRfXyzYubJQCxLNI
 EwuN6vyhwNbWoP7RsARaVQqafMMd2D/TngQXejcyPZOLYP4rkI0JHT1ELmUXw5eJR9wAu30LIaa
 xzn7dZ6S5MZayZu+0mhN+ZswWPK7UuhULCmbDnxBiw0FBRBSnve3SbM3a9enqPEDutvRqtaY4Cv
 QjM8ECU82EgGWmJcw7I3ODgoXF/rV93l5iVNMKa+wK1JVYjbUrIdfSXiRNkQgi0EJSKSB8h3v9z
 jOhkzR7UMuDH62tAd0uPJ1d3KOpBv4FhRTnqOPMB6vFy7dnGU7tLIJdIF623VFUDm52+HlGb3hH
 zJuf6tjzskGIErwSS0plSaFzaX5upxRVGWCqp0ZthLJ8mjTptEc973gwFhDbylEi2B52UjvL0r8
 h/K6u6YcZ4FBPSVk4A2YvyFHzsJwax0Dr0ZCOwmcZU+LH5rQjuJ0SsQK345MGUC+VSGs6vAzc1F
 MPATNgdEt+E1TBzjk6Q==
X-Proofpoint-GUID: piOoi76Lk8jOftck9ggwGkPqfA-Ci1MA
X-Authority-Analysis: v=2.4 cv=daCNHHXe c=1 sm=1 tr=0 ts=6996b2fe cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=xwFL3R7BSttjCcsnrgUA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_02,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190061
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266577-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 42FDC15C907
X-Rspamd-Action: no action

On Wed, Feb 18, 2026 at 06:24:24PM +0100, Krzysztof Kozlowski wrote:
> The active and suspend pin state of VSYNC is exactly the same, so just
> use one node for both states.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts b/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts
> index 0cac06f25a77..30222f6608da 100644
> --- a/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts
> @@ -543,14 +543,7 @@ mdss_dsi_suspend_state: mdss-dsi-suspend-state {
>  		bias-pull-down;
>  	};
>  
> -	mdss_te_active_state: mdss-te-active-state {
> -		pins = "gpio10";
> -		function = "mdp_vsync_a";
> -		drive-strength = <2>;
> -		bias-pull-down;
> -	};
> -
> -	mdss_te_suspend_state: mdss-te-suspend-state {
> +	mdss_te_state: mdss-te-state {

Seems also to be unused. Can we drop it?

>  		pins = "gpio10";
>  		function = "mdp_vsync_a";
>  		drive-strength = <2>;
> 
> -- 
> 2.51.0
> 

-- 
With best wishes
Dmitry

