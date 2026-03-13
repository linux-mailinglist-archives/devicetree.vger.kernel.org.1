Return-Path: <devicetree+bounces-274846-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KP/hBWJzs2kQWgAAu9opvQ
	(envelope-from <devicetree+bounces-274846-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 03:16:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6986D27C9CC
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 03:16:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 255003189BE6
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 02:11:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98F2A33DEE1;
	Fri, 13 Mar 2026 02:11:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jtoHtrl8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SbRPW1iz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68ACA330B32
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 02:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773367907; cv=none; b=lzzusV6vXyos5hYXBEKmX7DtGP48R+m7B73wSpZbz+3jjDE1FP0gOEYTfzQ+kKTEJX2pL7pA9vbznUzaGwGTgm+4OQhu8GHA+xIgqONtTKv8IL+kb4nb8shFC2LPi8XFKedVtsqjGJ2xskJaAuEGzYo/BCCjsZ/en9rxaQ0TLqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773367907; c=relaxed/simple;
	bh=iEHWAOMWK9NBZlmVkzkSZR2rVMRLUZHQpZHVOg5mmwQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ewt8BG5Wm1FJEJDxAmFu2uYkwEDqwttHyTXPyQDe/hPmtMvX73zn7ToSFWd6T8cihgJr/wUDOkh/hNDPEuLu6iBTGNtmV9+QdXcv9HpAuuyeE6z8yyRaPcS9SGxaeeOdVsC1KXarjmTOT0D3tVy1i6/selmPD39qEzGZXW2MMSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jtoHtrl8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SbRPW1iz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CMJj5q1052544
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 02:11:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Z8nQMK/dyX/NcjJbrlQ377Lv
	LK9n7wIl6HwnSAm5xgg=; b=jtoHtrl8plFtSfni9vWe48+HdC9NYBxh3bJ5jblT
	1XbNfJg8niVlsX2hdPV5ZcRYwBN3cqVoVr2Q6p7Nw9M9U9brVSk+eap0wNUGvqAU
	TRoidlBW8PVk2VJK0ZHSfNpbNfy76gnQebtNze7AMNUOWhEjcToL/1sph+Snt8g3
	vvQ08ohgHwKJYD6HflVtBVUto72+giBJ2VZPUDEvylw3etRDClkpgMEGFbOzo1QH
	dSVx1kEZ64xUbggvDBWrs8p3+UM7eOPv50lifmfdlV0qFpIJOLI5/cOuToE3LWh9
	p+ldJgoUNSwd2AsuwBFa+UwQ7WwT+ClqNvp5LqWMZunp4Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4wv4ty-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 02:11:45 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd858e8709so1795998485a.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773367904; x=1773972704; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Z8nQMK/dyX/NcjJbrlQ377LvLK9n7wIl6HwnSAm5xgg=;
        b=SbRPW1izwaPnX/ja5Jq+Gl8tTOItLElICkHYIB6jCIGu9Ko53UPSji8oalocta1MEZ
         FASkw4IvwvOw4u1EaaV3NQPvNuKPHt4Enk28FaN2Wj2gTVAIsNzXad1bC9gT0mvLttkF
         k2mq502Y69iflIGIHYrEAMPwtNq3G6rZcWLSpXdK2xt1Zg5ThhNjSBaiQf8BkBS6unXT
         ObvzrWz1xF8a0I08ogg/xvB+OEX1nxhUNsjCJPamYCS11TbnJ/WzRPIwQzbTBikKIak3
         z7t1R0Lpy+T/gz/OKsVmPzP26nDZb/g49HCNpI6/vZ0Xjy3Z/oEXUm34I5mMHOz/e3GD
         k7Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773367904; x=1773972704;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z8nQMK/dyX/NcjJbrlQ377LvLK9n7wIl6HwnSAm5xgg=;
        b=appSe+ftv3LNtdHpEWyGg8h4aIEC5MH01HLm3witcLSxHm870wWdaIk0tMEpXmc1Id
         tyMlr8vNkRTExq6votBte5yTXZePpK8s/9jhKxv4GkGlOZWFUxL+r3GNxCC2lLRl8bDz
         we/a7rpyi8hNXWyIxuYVnrjLjVCkiAkgJqyJAIIdYoSsZD7epXBQqBeCzs3X2pA2/ofx
         JfRN1nAwbx0eeA3RiF4RotKooLzBXFJr08aCfYQndUkJhHME9CBUDM3Xz31tP5GaWix3
         KyU0p2mWQCHXUBHfXSdRl0pInrP5fR1w2XsYP+brO9Gj1cXQ8W86OjbOeMeJI2/dWrCf
         ELjw==
X-Forwarded-Encrypted: i=1; AJvYcCXEN6t4yl9D44PErEWI5WxMcxM9JZkB+PVlWmmDjmOiGMAcjPKwomS3HlLQj7qMDaMd52YgFh4a7AO5@vger.kernel.org
X-Gm-Message-State: AOJu0YwvS9A/ykGShAJoProXW63KMqrIIC8ojmHYCwYuAlq2o91eryR5
	Hxx+yK/hS2aPNeXcSgqKa9O7sX0q9WG1oY4LiqSOuD+0HVR8uQXXwQvjc1BKBa8/B/dnZCiyxHm
	vMRPykOEdz7ri4AJImxoTdit94wVvov02GrbC3/RPtUIwIXx1GoJRDRk12Ce6XRFR
X-Gm-Gg: ATEYQzzhT/7Y1yB00WAnPboch5Reb0SMI9ludPgqa9F/1jVxdwiFLaalfAtlCWIS5OS
	VEmHTwck/lcDy7izY7R9foUtltJI66uSfRS6Vp7g4gWhReCOC4IklAONxtrDAd3M3j/odn9rld+
	YfjCh2IiWUbj3fceesoIdxxzssJpvJICGSemBXlVsrOnnr3+erxnfmVMrJlBdnn4udVA5QBA0JL
	Qxd148AfCRNIkDEAdH3FxhZgMS7Czw9gaKR1Jsf+CFgwqT3+UxTe9bb8I7ZDEhHDYZynXw2WLz0
	KkPPPBQgXFu/vzvclbVpUxrKjwoWJ7eT1ewDaGqMEFe9galyunhep5x0HX6+vtZqaOHBfI2q7Xf
	eYqZAOQiNO976nOSLt1WBS2GxFFPpjwaoLk43p98Bux7XwwHmsRsspj5dML4Yz4O50x26MFXuIV
	C8Xvfye19geEE40aUc/24X2qqC5DdNCE6PPMo=
X-Received: by 2002:a05:620a:2549:b0:8cd:98c1:763f with SMTP id af79cd13be357-8cdb5a4abfdmr257100585a.11.1773367904037;
        Thu, 12 Mar 2026 19:11:44 -0700 (PDT)
X-Received: by 2002:a05:620a:2549:b0:8cd:98c1:763f with SMTP id af79cd13be357-8cdb5a4abfdmr257097885a.11.1773367903551;
        Thu, 12 Mar 2026 19:11:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156162c12sm1222960e87.52.2026.03.12.19.11.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 19:11:42 -0700 (PDT)
Date: Fri, 13 Mar 2026 04:11:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maulik Shah <maulik.shah@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Thomas Gleixner <tglx@kernel.org>,
        Linus Walleij <linusw@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, Sneh Mankad <sneh.mankad@oss.qualcomm.com>
Subject: Re: [PATCH 1/5] arm64: dts: qcom: x1e80100: Remove interconnect from
 SCM device
Message-ID: <bnaxwhrfeer3n62xp5rka4pq4mz6y5xxwsin2vavc5zcj3ymxj@splrj22ki445>
References: <20260312-hamoa_pdc-v1-0-760c8593ce50@oss.qualcomm.com>
 <20260312-hamoa_pdc-v1-1-760c8593ce50@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260312-hamoa_pdc-v1-1-760c8593ce50@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=GcoaXAXL c=1 sm=1 tr=0 ts=69b37261 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=VwQbUJbxAAAA:8
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=buI6ytlUu26sYBdjsKoA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: IOG7ksXt_Hh2m_HFo-NInXfxj7Y5jwRu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDAxNiBTYWx0ZWRfXwVduq1by7flN
 IHiUlfz2zN2Xw5y56lJpttjmndc5cAbJlqHg5yb9kTDvPEoyPQEl0ix8QEkgPQbwougwdrgTLEw
 7woD0EH4aUFOv1SFUOOoCPyyMv2TKVRvYaKTkq2Pv9cuTHsOI7eYK/143Bi5EYNiPa0bK6tUdfw
 VZKl2P4O3ndD2ARXlj5DcrXEJWWbHQ01OGVKtl/SfJ7/287lAvVrV1BGvWljSHg2DhjUqcpz85+
 GBMxHMNhT3xWLW7PoCLPN7mg04KHyrILd6ef01CEsIA9fIVaKmZvefqQXc4rlbwY2dKlQxvTL6L
 ZjZRwytai67RWyKu9zHePb6YcQsa9j9kdCC21d0K3RzqeAzZ2zNt21aJonFcrFqKScUz9VTzn0v
 rIGgRqYVQB+mCeOknJlF8MzdnKQfaYWI9D6IPR194LiW1ZAgVn4is54nwSDCExQzPHO9/7uITL4
 AnxJWrIuiG7DsGgywCw==
X-Proofpoint-ORIG-GUID: IOG7ksXt_Hh2m_HFo-NInXfxj7Y5jwRu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_03,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 spamscore=0 adultscore=0
 impostorscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603130016
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274846-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6986D27C9CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 09:26:35PM +0530, Maulik Shah wrote:
> Interconnect from SCM device are optional and were added to get
> additional performance benefit. These nodes however delays the
> SCM firmware device probe due to dependency on interconnect and
> results in NULL pointer dereference for the users of SCM device
> driver APIs, such as PDC driver.

This sounds like a bug in the PDC driver. It should reject being probed
before SCM is available.

> 
> Remove them from the scm device to unblock the user.
> 
> Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> index d7596ccf63b90a8a002ad6e77c0fb2c1b32ec9c8..ebecf43e0d462c431540257e299e3ace054901fd 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> @@ -308,8 +308,7 @@ eud_in: endpoint {
>  	firmware {
>  		scm: scm {
>  			compatible = "qcom,scm-x1e80100", "qcom,scm";
> -			interconnects = <&aggre2_noc MASTER_CRYPTO QCOM_ICC_TAG_ALWAYS
> -					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +			/* TODO: add interconnects */

Somebody will try to fix this TODO, reverting this patch. Let's find a
better way to handle it (which would also fit other platforms).
Originaly this was proposed by Sibi ([1]) to speed up PAS
authentication. Other platforms require RPM or GCC clocks to let the
firmware access crypto core.

One of the (stupid) ideas would be to add a separate SCM (child?) device
which would be used for crypto-related SCM calls. I'd like to point out
that currently we bump those clocks or NoC bandwidth, but at the same
time we don't vote on the CX rail. I'm not sure of the firmware handles
that somehow or not.

[1] https://lore.kernel.org/all/1653289258-17699-1-git-send-email-quic_sibis@quicinc.com/

>  			qcom,dload-mode = <&tcsr 0x19000>;
>  		};
>  
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

