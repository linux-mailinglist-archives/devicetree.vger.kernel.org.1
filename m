Return-Path: <devicetree+bounces-274388-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KDhuNikpsmnlIwAAu9opvQ
	(envelope-from <devicetree+bounces-274388-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 03:47:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 575BF26C6AD
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 03:47:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 08CD53019391
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 02:47:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 408F63806D3;
	Thu, 12 Mar 2026 02:47:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="os3qShQP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IsDht023"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF64C37EFF5
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 02:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773283621; cv=none; b=kYcHyG70rLc1e34+eej+vQ5e7/PAMrOwB6ujdaI+k8Q7L7TVvCrjHzmP9SeawG/S9QBkaoUZiAavTCEce1jihPe7YKzonEBi0UJXRghGTqfQnK9uv8QDg6if2Syim4uR1oztesfE7Ycutah6xF8H+RZSXyvY6JKaV9bxG5TPK38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773283621; c=relaxed/simple;
	bh=muhjVxcsZV23G2vsaXhM6ZfnTnudhdZxEpKIvh3D5PI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t6Kehxu/KuxzeiKNeLPRk0agWlBHObxNEXmsQGl38b2amtr45VF6Yuia+2J857zVy6O7jHc14vemQV1YMWFZ4tKMU9klaXOUslwWrj/Eji2C8kZUJsReiVF+s65Dn1jWt8sZcwNFlDvc+0MnhEvaNh5lx1CI5rGvkryxjyL7NRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=os3qShQP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IsDht023; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BMMt0g4132875
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 02:46:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=c38zHwY0Losz+olyA3EAKAi0
	1k5oxItl4o3Z8kp0dZw=; b=os3qShQP1fk8+q5l21OGuBy8zpzr7XwarVtnQuc4
	DhBmLJuDttWTBNRRGiHsndalylUiAsEY/qUQU+Z2c/7QBWZQycwKA9LvDAwS1+tg
	bcQ7YaPzGNLTrz98a3gCQ4SG97Hy4ybRGZLosIJ0up7HkAcHdOXNbQzWgp0DGIeL
	6PZ6VMe5pU6zfu2fopBFj71Fjrgeby6MVILaPipb40RFs1qWzsQ0YUvBxzk1rsNt
	Itl6dYbazBbSQeWmwP81KhKtaSkRZK52txgH1aK1+aUnLCJUL8LnNMshjAhoq2p+
	l6o0Vsxo+V6w+TE8/2MDoN+IuLqtgYTVX3K//O0m1dh8qQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4w0kqp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 02:46:59 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5093025ffecso45762141cf.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 19:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773283618; x=1773888418; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=c38zHwY0Losz+olyA3EAKAi01k5oxItl4o3Z8kp0dZw=;
        b=IsDht023mHjWhdrqO7z7JdLQ+pcDOguN8ojVXHJfAud6Y5R+q7SYTvm3RFrfaTbuFc
         4SeE3AUaQLwV91yLvSx9l5oLfd0LmZtfGUAOCa1Rd08oRrsXAWpaMLTFwFgZmmi06Hsg
         eCM2oVpamzcpCEHWNexoZaO6s2Pkw8kY4Tul66T6v3halSfNC64Bo5fJEJmUJvfWN3gD
         STYqCQP3wMNsw2JJwH35LJlEF4iWxNGKyyQZ3VsnbTqYcol79xOxLnfwjt/scxt0cy7Y
         Ti5G+YZQUEaPUpQCPgZTDUgpdOkix3vQJogC/NgGiG1xpb3TqAHyfH7QF1TXrQTkmbuP
         eM/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773283618; x=1773888418;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c38zHwY0Losz+olyA3EAKAi01k5oxItl4o3Z8kp0dZw=;
        b=vsnuv0jHXWNm6+mlWHIVeLG9ii3s3sR+iiaGIr4o8iS00jG/MGUe629HEC73ItdT+V
         z32YwHYDtAz1EkPYzbiSfZ454kd5xuKSfHyUwhl5edz5/OX0xUMAMer8BZSoDcl34R5v
         aWEezifCI+ulHYaU5a9lbsdU/2MO90DngEQOsi6MgeGMutDbHvXtiBKixKYqouYBhZba
         rcToEijT0meWRQVZnzHwUxr0zuF5ZkoCiNR0td6pmDPbWKiKOhVTGiTkjd+sPHddbFE3
         XzAl8FYLq/VMckx2WgFWhnn1oxTquUL+ld66cOFux9Wkww8m/TcapUgKlGwXllPGiUYZ
         0nnQ==
X-Forwarded-Encrypted: i=1; AJvYcCU6PbWcAH+wHeshiEy4PaKpld2MnxvwHGmDY6eszQGL7PiRSHz5h43/orykXX2/2LmLAWBp3ZWGY/ag@vger.kernel.org
X-Gm-Message-State: AOJu0YyNauoiRwYI8bqHIiP0jCI1iRW4OTcTsYMflPtWfkHrTH0SA+3u
	tR/DyKB3hHUaWmnHUiS2ElZR2fhTQJZMcU3/ZB5mRvmDlpFDU53TMXcaVirb+cI+3EkHQobMRk8
	A6DxPeka6F0YwykeFqK2BpTIgv5elH26oS3jr0NAS6XsovrbwA/abJSTf6zmjNyLV
X-Gm-Gg: ATEYQzyUYW5mXjoEvcMEpFZjZor+shIpZvrqb8jydXJ5etzrhXuKblQAX55RendwJ+Y
	qOwkUPrC8Q0mJyqLaiKonw/Hy1ClQlXWFpG7u66rya2pa08LUpga0lvzCWxv3ITk6frsYCS1G+U
	gAolYHVbu741UaptecoIZFhT2jbBMGMw2YLfpgUlVWZdGCbCCIzLJv4tNimh712/aNP7Otbjka8
	PNvlgUnt1ZnEDkTqri2FlakzwB39LqvUmNJZkUNq4JR6YJxF2Xz5Xx55Zf5Gzm8ShttsGG7Oy2A
	4t0YeDRZuKtTAxYWpLboEG8LEapvEq6dFAUCYQqADewFFqnTucGhPqC2OGCbKd4LWELKLPKdCzt
	gPl6pG7Ev33LKgo2ZCSOfNy1Z+R3uutJtih8UwW2c8+dMWvNlPOqdyH/HsfAkLFfEShbR4hMokc
	eEmwO3wiZms9SNyaoHD2GsXnq+Qw8fuG457Os=
X-Received: by 2002:ac8:7d94:0:b0:509:2382:8881 with SMTP id d75a77b69052e-5093a171accmr66141361cf.46.1773283618105;
        Wed, 11 Mar 2026 19:46:58 -0700 (PDT)
X-Received: by 2002:ac8:7d94:0:b0:509:2382:8881 with SMTP id d75a77b69052e-5093a171accmr66141071cf.46.1773283617578;
        Wed, 11 Mar 2026 19:46:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15636eb3bsm685835e87.83.2026.03.11.19.46.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 19:46:55 -0700 (PDT)
Date: Thu, 12 Mar 2026 04:46:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org, Petr Hodina <petr.hodina@protonmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sdm845-xiaomi-beryllium-tianma:
 Disable MDSS
Message-ID: <t4uhjpxdvjxda4dxkoxktv6xlxg3xvzyslgerluu3t2dzxv33v@k46gvwv4uf22>
References: <20260311-beryllium-fb-v1-0-408a580d125e@ixit.cz>
 <20260311-beryllium-fb-v1-2-408a580d125e@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260311-beryllium-fb-v1-2-408a580d125e@ixit.cz>
X-Proofpoint-GUID: LjxjLClQzX9Wz8ZpMlIC4H9-7nytvemO
X-Authority-Analysis: v=2.4 cv=Cpays34D c=1 sm=1 tr=0 ts=69b22923 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=sfOm8-O8AAAA:8
 a=UflblNn4a4D0er6g2GkA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-ORIG-GUID: LjxjLClQzX9Wz8ZpMlIC4H9-7nytvemO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDAyMCBTYWx0ZWRfX//0XOTwfMK+I
 N5i76nA8j/4cQsup20BMAT0fJJe0bnWEn+Kx2Fh6HoAy6NhUIAd0iVkdG68fLqttfL3K6gp8VAQ
 NnA/fwnWARt57G6qZeOAZGipPZttqmeTn1hvPafqenO+MZ8CziwDcVagb0aul4oD67WkaPsP19Q
 zsACVo2CuTOX5E+lj0FJbn7TqfL0n+vYSQXoRCt2jiMfN4gAYdyIzsnqBBr2F8DtUk/pT8c/8ZZ
 gQJK7YlHAvKIrEn5EHf+2lMjeht9/xJVwR9UH545/uhgiqSp2Yje4FeztuLFErNlYT4S7imWZMh
 /EdN2lwme+BQtFsjYdXwDeiBO0eb/Dyy7FNZN8ZTOMhBOWZIciJzAbHfqek76qvoK/pPgbI2TSR
 fUWs72Ec043lq5ArS9SlgOlsUkiqwhxXK9gqZ17edQSjjHhG0zbqP45VmDktDrJMovffqj3ooju
 ytgyDWypJhwxY6wedhQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 malwarescore=0 suspectscore=0 spamscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120020
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,protonmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,ixit.cz:email,0.0.0.1:email];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274388-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 575BF26C6AD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 07:44:30PM +0100, David Heidelberg via B4 Relay wrote:
> From: Petr Hodina <petr.hodina@protonmail.com>
> 
> Currently the panel driver for tianma is broken.

How broken? Can it be fixed instead?

> Disable MDSS to prevent DRM taking over the framebuffer.
> 
> Signed-off-by: Petr Hodina <petr.hodina@protonmail.com>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-tianma.dts | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-tianma.dts b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-tianma.dts
> index b58964cde8342..d1c7bccaab500 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-tianma.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-tianma.dts
> @@ -36,3 +36,13 @@ touchscreen@1 {
>  		touchscreen-size-y = <2246>;
>  	};
>  };
> +
> +&dispcc {
> +	/* Disable for now so simple-framebuffer continues working */
> +	status = "disabled";
> +};
> +
> +&mdss {
> +	/* Disable for now so simple-framebuffer continues working */
> +	status = "disabled";
> +};
> 
> -- 
> 2.53.0
> 
> 

-- 
With best wishes
Dmitry

