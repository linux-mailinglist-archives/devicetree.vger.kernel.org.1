Return-Path: <devicetree+bounces-276108-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGWvIqPjt2mzWwEAu9opvQ
	(envelope-from <devicetree+bounces-276108-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:04:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E69298712
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:04:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 454AC3004C34
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:03:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50D3526ED41;
	Mon, 16 Mar 2026 11:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lvbbAm3C";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jljJdOFE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C43817B50F
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 11:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773659032; cv=none; b=n3Dj/+C5Lz5FddEJiQ/9bih3lx82vpVrgA4Zs/NYpyUwqEvkdL99jJ0Zb6rLcGDr7CYE+igc6syuZzYDRsOVWyii1IC/J2z5AYfuQ5q/ox0azjrkjBWW2M0WS7WfFt0+0cCZqBjTy5K3FhN37kuzswiZmx3TtahgHnZV8otNHwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773659032; c=relaxed/simple;
	bh=ONDlb32qfrMTx81xQ6xuub1GdI9oAvu0FzssNJPtv6M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ejnk9iNt6oPtJixtxLqvMBSniRb9cjBbA9f9BsDYC5axpJ9GSmlOlwZQQ8Dww7/u4mvCi8Rvdb8+5AT7cQZ3FkNb5FsfAxFrekNbPt4O1VbjAHh/rSJ72LoqSP9zAUaX1DAYOEaC3tK9Z49n3PSB6YkFn5m8f9D/ir24bMSTkQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lvbbAm3C; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jljJdOFE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64dUT538832
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 11:03:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IKvEpj8o9w79DY7CvTp53X7PaYtXe6EY1qdauKk/1vg=; b=lvbbAm3CdT+5AmBd
	RTS7RJ9LUCLAYXQdoAdIf5ZB1ZO0uUlR0UsTZtkFj51lNUCF18cPBuBlTotvvIpj
	+oLtAu0sgaMoljjQ2XRpDhuiYQ43zHRqFdUB/alEUxb3Tbpuo7Do8O+9Nmzww2bo
	1ZQNHfkBpgspHitB/5p0APX8ZDE5tqR6FrKwmkAXGer0TqgpjEN01TDLe9cHLOfn
	tB3HP0KsujpGmu82FcOnI856l6aMvE7a4m7Mq5jvUyKvECfk8roSmAe9RK9fPtsd
	D7hWnhZjxFMvGdbT/Gpvy/SPi/PZXztVJ5h2aXTpGzc/FHjKcR+V7ihEJUyBb12J
	x0YUvQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvyy5nbqy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 11:03:50 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2b04db6c138so20339285ad.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 04:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773659030; x=1774263830; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IKvEpj8o9w79DY7CvTp53X7PaYtXe6EY1qdauKk/1vg=;
        b=jljJdOFEughrrj+oXp47fBxgtPPHDbWBEWoYpFm5gR7P88rcqnqjUZ9oiYPf3J56fZ
         k3zu1aGEHqRsZo96I2HV/mCXNil3p9Tej4B/Z72L7ywMHq/G3SO+CZ/4FM8073Ypv2+p
         j7hRSDFGkL7k1PDrJkDm+P4C1PgL6UYvtW+OPnYVAC0JQwkhRUYHF0xPL1K8gSVk+M56
         fwTsWQlYHzKncKierX6dSKYdASngTPUglifZV+4t7c2I41qiwd3m9Z3pNwA2wtdFRgey
         Emf37BSdGDdHjZFXcmQEouGhfXVnuZ9o3jIy8gxSHxSGVsvvw0wGkfOy2CHf+6Zg1nZ1
         X5FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773659030; x=1774263830;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IKvEpj8o9w79DY7CvTp53X7PaYtXe6EY1qdauKk/1vg=;
        b=pKa+1psRZRXtWo48Z6vDqOG0yDs9pbEiEoCA/Q6k0y9QSm8k6heaZMvifjqNBZdyLb
         IzyJp3uZrCqnWJ+BLCiueDXREBar3fNhnWstRahSpGUtzkA8bQnUmmJxvRdMqQKMsp74
         AigpOdk20j6XmdEIizjw4qwBZFI12N7Wo8Ld+WfkNdZDOweea9klLuYGVRNQ28xo3i4B
         GgSmZw4JVirsf+UCQo/NC5Pg8p1s6aw0JOCFofuaHvQbXMJ5YjUTSLgyl3wvuZXk6C0C
         /NFp0sR3FNMT1zbSRhT9SKN0FIqTDFixZ05IyvjZ+VYb4vsbzp46xOsAonR8m8ZqwXsf
         QoQw==
X-Forwarded-Encrypted: i=1; AJvYcCWlYFPXxqy/7wjidKgGHhqYq06Io422Nsn49lwyNXH9rXyjSzOIaCJTTJ8QfN8xf0JYsq95Uobk4E0K@vger.kernel.org
X-Gm-Message-State: AOJu0YziWapAdvPG2i/lVCy7oRUcf309ZWKlRmuaXz9JZ+nADWhwkEBV
	IbSTVhSTG/mQz4wRV4WHFubfmG4pVPWlCTWpTDGKcg8ypTlOdIB1pRnu7c1501gMfCGy7qRITmi
	JL8jcNKVfO+m/771pyoKnPG2vszNy8tT9Xb1ar4GJSLsgfT0Dug4qNOmXBkf520Ui
X-Gm-Gg: ATEYQzzJZS5FXmsHklauNxmFMYUvs/3qjI6Z6F/TBioYSLE8vlIWcJ3+a3TmpHA8hyb
	/fzJspipimIU9qdPX3h8ZW7tNB6gCy3VGPSaoTK5TfhAIgz9Ndoev2Hr/YaJQ9oo1+xZNIw+Jmx
	Mwvs+mob06hWJlCOfS0ER1TiJG84f/JC/+pTmwxy2uBESq9+WjSU83u37HM8HQKC66MZV7e+JOl
	B0JsIfWDvRna7LM1KPXoFdJrw9fH+v+lJzquAlG7YTK9kKLn2M/5W5u1JqHJNgVax869LGbMNqo
	y1xZ2V81yFugOA2zEd/GsEKyri2kBhk8Qru+lD2rtbYDCI+/Nly5HiR2x+Kp/ZFwoEPATLpsfup
	/aRBmrFIs0gYEUFNLHQbS8fHwFKwvtD09EzzuWrwyITieb9hHR+Df
X-Received: by 2002:a17:903:41c5:b0:2ae:a95e:fe58 with SMTP id d9443c01a7336-2aeca959d3bmr130518925ad.8.1773659029761;
        Mon, 16 Mar 2026 04:03:49 -0700 (PDT)
X-Received: by 2002:a17:903:41c5:b0:2ae:a95e:fe58 with SMTP id d9443c01a7336-2aeca959d3bmr130518455ad.8.1773659029227;
        Mon, 16 Mar 2026 04:03:49 -0700 (PDT)
Received: from [10.218.5.182] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b0537b6567sm40971865ad.58.2026.03.16.04.03.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 04:03:48 -0700 (PDT)
Message-ID: <5299d711-63db-4d51-888f-c9062b2c7fb6@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 16:33:42 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] clk: qcom: Add support for GXCLK for Milos
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260306-milos-gxclkctl-v1-0-00b09ee159a7@fairphone.com>
 <20260306-milos-gxclkctl-v1-2-00b09ee159a7@fairphone.com>
Content-Language: en-US
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
In-Reply-To: <20260306-milos-gxclkctl-v1-2-00b09ee159a7@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: FmL1_W-ECGtFqhRUWFks5xo3Jy9rXBSW
X-Authority-Analysis: v=2.4 cv=QOxlhwLL c=1 sm=1 tr=0 ts=69b7e396 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=m_WPT2mbnHjVYyRV6GoA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: FmL1_W-ECGtFqhRUWFks5xo3Jy9rXBSW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA4NCBTYWx0ZWRfX/Jp0nyYnM3k9
 sbhz0BRcU1DyXDyiPOj0L7dTPakBiYyKgZT2TOA7Q+gseciKB7WwCsTKN5eboQYOZmXjoz37ap/
 5M3d6apZ8mnrAtv/UqZJEyJkwcFHxDAJzXEWz8v+2sTJ6iVCynh3vAr/MwsZJbNtlC+MrSn35JT
 xkzBvL3CHdGxhFDui9PZOsAZoveObr289+5+RV578fDGtiYvsTLiypVPTwqx/4NqI+Q/xe+Oaog
 295uhcrZLt9w97ay7YM81eDq3bEl/B1/vbsI3ujkN0l9Q52apSbYm+1UKR32h47smk4tRxlV4jD
 uUONihi5ahhxEAGQROItytk2py02MI3Nn3CiEa77grIMdsEkswXyzFgn07RrV0HWfU7YjpFR/tJ
 GdAqpHgtfMDDqSdhAgqibXxvJKy2pgqJH1BZDCo1PZy03W5e1csZH1AMnrIMsw/GDEMwKBA5Yxp
 MiZtTkY6OHxMptdDKcg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160084
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276108-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,fairphone.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jagadeesh.kona@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 03E69298712
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/6/2026 7:18 PM, Luca Weiss wrote:
> GXCLKCTL (Graphics GX Clock Controller) is a block dedicated to managing
> clocks for the GPU subsystem on GX power domain. The GX clock controller
> driver manages only the GX GDSC and the rest of the resources of the
> controller are managed by the firmware.
> 
> We can use the existing kaanapali driver for Milos as well since the
> GX_CLKCTL_GX_GDSC supported by the Linux driver requires the same
> configuration.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/clk/qcom/Makefile             | 2 +-
>  drivers/clk/qcom/gxclkctl-kaanapali.c | 1 +
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/qcom/Makefile b/drivers/clk/qcom/Makefile
> index 90ea21c3b7cf..155830140d26 100644
> --- a/drivers/clk/qcom/Makefile
> +++ b/drivers/clk/qcom/Makefile
> @@ -182,7 +182,7 @@ obj-$(CONFIG_SM_GPUCC_8350) += gpucc-sm8350.o
>  obj-$(CONFIG_SM_GPUCC_8450) += gpucc-sm8450.o
>  obj-$(CONFIG_SM_GPUCC_8550) += gpucc-sm8550.o
>  obj-$(CONFIG_SM_GPUCC_8650) += gpucc-sm8650.o
> -obj-$(CONFIG_SM_GPUCC_MILOS) += gpucc-milos.o
> +obj-$(CONFIG_SM_GPUCC_MILOS) += gpucc-milos.o gxclkctl-kaanapali.o
>  obj-$(CONFIG_SM_LPASSCC_6115) += lpasscc-sm6115.o
>  obj-$(CONFIG_SM_TCSRCC_8550) += tcsrcc-sm8550.o
>  obj-$(CONFIG_SM_TCSRCC_8650) += tcsrcc-sm8650.o
> diff --git a/drivers/clk/qcom/gxclkctl-kaanapali.c b/drivers/clk/qcom/gxclkctl-kaanapali.c
> index 3ee512f34967..d3899420d6f2 100644
> --- a/drivers/clk/qcom/gxclkctl-kaanapali.c
> +++ b/drivers/clk/qcom/gxclkctl-kaanapali.c
> @@ -54,6 +54,7 @@ static const struct qcom_cc_desc gx_clkctl_kaanapali_desc = {
>  static const struct of_device_id gx_clkctl_kaanapali_match_table[] = {
>  	{ .compatible = "qcom,glymur-gxclkctl" },
>  	{ .compatible = "qcom,kaanapali-gxclkctl" },
> +	{ .compatible = "qcom,milos-gxclkctl" },
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(of, gx_clkctl_kaanapali_match_table);
> 

Reviewed-By: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>

Thanks,
Jagadeesh



