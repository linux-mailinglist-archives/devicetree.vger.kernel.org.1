Return-Path: <devicetree+bounces-278018-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHiYNvdTvGkXwwIAu9opvQ
	(envelope-from <devicetree+bounces-278018-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 20:52:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5917D2D1D0B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 20:52:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 45869301303E
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:52:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 343DA34CFA8;
	Thu, 19 Mar 2026 19:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eROLAxOS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MRAnoii2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01EBC313552
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 19:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773949941; cv=none; b=SktEWNwDpxnklRMK0RwdfAjK7NcRqOgd+Kw47J0Q+SnZf/2OqzaGHTX4ZmApgLsYYbvEQk8IZXTYlY2eHULUZX2s+/foFYl6htXK6RSchDWdtF3s96h2yJZO/onfrwbwBS/iyycCU0PnzAy42a9TpAeWbIEviqpKAJS1I1EdFKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773949941; c=relaxed/simple;
	bh=/rr5uxNR96xN/b7jreNzYG8HOZ8gvoDkSdRvYMtUX8U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l3f3c/vByILq8mvmT+uz+mXEKn/wa92pUiu4WerP8Ywjy+nod13n9N1oMfAV6QVVESfsyPw/mOIJtDeBpeAmba/qlK3pBrJM+hdmUo1HRWzDu+9IvE4rpNCvgRopDqA0LnNjPaO5YFrU6VWrEudmelipNvKEtJbnOR/CBUjSp5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eROLAxOS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MRAnoii2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62JEnqIo1567541
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 19:52:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2mZNokb2an57NRYIhXcZ0iiY
	bPweTbX43pltA8F5UCg=; b=eROLAxOSGD+fO2dgCm2jOSXirhejiBhhLzpZ/8Wh
	cgjoLRJlEp1cyrDK1AP6b54Mn0qmETjC65wQwerWKfs4Hx+lgt32qd2jOoQTIjp3
	q/Fb9ivydyt3m+3mguYCGRha8ph9QqJxFj0VmmCr5eBCkATqfVN5dEoqnZ239Fjl
	NjI+BBhIxmAcK8ByXaZ/wQazE6KpGsxXTFvpwmAlFAvA3vMCVl1niCKBIZKqBeA7
	XiRbY1ObmCYNJoWqdhpOxRN/dAYrOwCUvskwXdtH7ePeX5PXIScJH0nrlQdXST9z
	BFnnxfr0nuPtdb4EAhd+oT98zwnLdF5Uqj0HC6EWAzCDOQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0akxjsrf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 19:52:18 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-509114d7418so16024651cf.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773949938; x=1774554738; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2mZNokb2an57NRYIhXcZ0iiYbPweTbX43pltA8F5UCg=;
        b=MRAnoii2vnWtjTuSjl2SYOKQrU6q7F0/0X/5MVMjPb5uK8NhAZqthgWgvXZe3Cajel
         dQNeErvoMZEsTe8FhcmPJhvpFCLGTURv539/WFZkEXoCcuARyfrG5xCZUDfGB4/l8wWa
         6o9a731beNQNbUP3m8s6sZdHADK5p9iGXBgLvxXAEo3Ty6ZSIe/Zz4MJEzsf8H0yC8No
         1c+eKVpLTOE2hmyMmKlHBUzIWz8RA7P7TznCy8Yj5Z2PphLn2J3+uDqmhTfUG7brzG3M
         mAffDoNoeZ+UW9CoBxUV4hD8vpPZhaHFGj1LtrIrNww9wpFgz8VmIayopx99ty/1IdCi
         9c+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773949938; x=1774554738;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2mZNokb2an57NRYIhXcZ0iiYbPweTbX43pltA8F5UCg=;
        b=OhpR2L/Dksy0+pV5TAspwmbSVHqs/u3ialA5p4L2vvO3gY9IiAZtoLtOSr6KTOLqng
         F16gFu74ysmRamuRTjeZL+eq85+Tl/W23vG6366pq2b9FF78b0XtBgfL7+Euv74VpqUt
         vcAXL+Ik03ZegtNuLvTlaQvWnX6hARgU+UXVmvF38+S+G5jkyMrGBXq2u7D0vlQ3NTWe
         R16xdtFlhUw8JT/r+iO1zAVeNJXJ9wMl23aD3LeaV1+jYrW8cmmmiC7ChmHevpsYwmb4
         4mcGsILtnHhxlR9iA92Pb2WtNFy9vo5eGaJOslZkOdXUC/HSiEzCRg4jkwpcZJitspLf
         KS3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXoG7HSXrxTTn3vkDwdmxW4QU7pjghJzhoKVwCWAc00FBbLnYRvaQ9fDqf3Smma3aqsCDhDl+wDNCha@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7Zq/2FcMd6X/sHbpBgh6yjYv8AfgIW+0KqlozNZpHjYVMy32o
	sSy5zfjoyE9hkkuFwXQu8IQE2Z0CxM0Pe47fzNyjyYj68wpGiPcpxLjwqwIJdj6bAdNzUKXEwsH
	JNsdo9VDY15TEVUnvK1WgQ+F8e2TM4cQbF3JQMwErrpph6QEBC9WnnZlGD+rg6z4O
X-Gm-Gg: ATEYQzywv2rGyTt6uAS33hBng8kAVIrb4pPfLe1NT4RA7OVq7JtmgArGi5mX7aeeuwZ
	/OugJ9DGfGk2n1yUavAtWXauhKlu4Jig7Jzj5J8QnRiBnnuD6F3u3STYfFCbt38hGD609wn/wtm
	XpEueocXRBKBA7Ca7fjpRQKds/EB3iJzyu9npO6vceB5TqbGt/xF4EMqfimXdIlRL2VTIJdxPNQ
	PHYSQi987A33WS8MbM+q1VEc0boSY+tWOYiZGPmIXdyZWyLeuHZ0a9lSx6CT5jwAiYvJmsg0HIY
	62Tl6I0T40+i4iYJS6au2nD9o/BygxIB8LH4KlEfHnTfBFlG1fJOy7vowRGNuHIJAA8503ls/Yi
	sQKWDmyy1K/rH/PiKtZAzWcStvkWAVjPLDyZvaCAtHVQJCfOxRJvXBaC95LzJ5OesVBFALTxZCF
	p0iV51hacAY8IbYts2NyLKjE7WMnvjxZvUXIs=
X-Received: by 2002:a05:622a:164b:b0:50b:35de:c4db with SMTP id d75a77b69052e-50b375667e1mr7561941cf.58.1773949938092;
        Thu, 19 Mar 2026 12:52:18 -0700 (PDT)
X-Received: by 2002:a05:622a:164b:b0:50b:35de:c4db with SMTP id d75a77b69052e-50b375667e1mr7561491cf.58.1773949937519;
        Thu, 19 Mar 2026 12:52:17 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a285305eefsm95187e87.70.2026.03.19.12.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 12:52:16 -0700 (PDT)
Date: Thu, 19 Mar 2026 21:52:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: glymur-crd: Enable eDP display
 support
Message-ID: <icgmzx6tedq3wl5jmadwzhfmm3sxzdf7n3dc4br6dljezdombd@ssz5gvj5corj>
References: <20260319-dts-qcom-glymur-crd-add-edp-v6-0-f582e87ec874@oss.qualcomm.com>
 <20260319-dts-qcom-glymur-crd-add-edp-v6-2-f582e87ec874@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260319-dts-qcom-glymur-crd-add-edp-v6-2-f582e87ec874@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDE1OSBTYWx0ZWRfX/IR5RTKALlZg
 Ix+QLrzgZx7f493l6yg6hhVAKzMH5GvLz6ayX/n+BegPDQ7SWXvRWc5tCIMcO2Vb5hTe7JR7x7t
 tAMG1ijfkFsy6T4yljnUHtZ31KEYBoMK42w6QSCZyTwPwVCKsH4mnc3cIfl+y6u4ZUALjYu5Pke
 4nix8gMfRhaADNFKa8r8+0soQme6J3p17YJsxpP8WJOReNeQxAdZukDtPA0fLFKe6Bh9YjmSWHx
 3YoSCzNJAs9J4Fs9aiGrMHl/bnXYZ+gwgcS/qXdUZvWhZJpCb3lBtUSiVTvLrNR060n9NtZqHeB
 ohTVP689mydUpaXoKMptSM+pDzeAx9WLTXSh5kZ+SMzMo0518fWnnekzFPDMoSvyrhhthULWOsP
 rNN4hi94y4patGOVsZ/cWMvuOh4Qzx3PqEOZ3TeJeq2xvZIpQiX2H2HmFRnL8/dSHcZerjM3Fr4
 i4qUcfyYV9TFDJPYbvA==
X-Proofpoint-GUID: p_gK1gE0BpFDg2KdHQtXvQXv2f-Ws51F
X-Authority-Analysis: v=2.4 cv=ZeMQ98VA c=1 sm=1 tr=0 ts=69bc53f2 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=z62f1IN2GlXO1xLWDYMA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: p_gK1gE0BpFDg2KdHQtXvQXv2f-Ws51F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_03,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 bulkscore=0 clxscore=1015 spamscore=0 suspectscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603190159
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278018-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5917D2D1D0B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 19, 2026 at 05:15:15PM +0200, Abel Vesa wrote:
> From: Abel Vesa <abel.vesa@linaro.org>
> 
> Enable the MDSS (Mobile Display SubSystem), the third DisplayPort
> controller, and its PHY to drive the onboard eDP panel on the Glymur
> CRD platform. Also describe the regulator supplying panel power.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 71 +++++++++++++++++++++++++++++++++
>  1 file changed, 71 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

